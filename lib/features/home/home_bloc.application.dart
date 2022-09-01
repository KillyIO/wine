import 'package:bloc/bloc.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/features/tree/i_tree_repository.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/utils/constants/home.dart';

part 'home_bloc.application.freezed.dart';
part 'home_event.application.dart';
part 'home_state.application.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc(
    this._treeRepository,
  ) : super(HomeState.initial()) {
    on<Init>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      final currentLocale =
          (await Devicelocale.currentLocale)?.split(RegExp('[_-]')).first;

      final genre = state.genreFilterKey;
      final language = currentLocale ?? 'en';

      emit(
        state.copyWith(
          genreFilterKey: genre,
          languageFilterKey: language,
        ),
      );

      for (final time in timeFilterKeys) {
        (await _treeRepository.loadTopTrees(
          <String, dynamic>{
            'time': timeFiltersTimestamps[time],
            'genre': genre,
            'language': language,
          },
        ))
            .match(
          (trees) {
            emit(
              state.copyWith(
                timeFilterKey: time,
                topTrees: trees,
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.tree(failure))),
                isProcessing: false,
              ),
            );
          },
        );

        if (state.topTrees.isNotEmpty) {
          break;
        }
      }
    });
    on<PageViewIndexChanged>((value, emit) {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > homePageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = homePageViewKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentPageViewIdx: newIdx,
            failureOption: Option.none(),
          ),
        );

        switch (state.currentPageViewIdx) {
          case 0:
            if (state.topTrees.isEmpty) {
              add(const HomeEvent.loadTopTree());
            }
            break;
          case 1:
            if (state.newTrees.isEmpty) {
              add(const HomeEvent.loadNewTree());
            }
            break;
          default:
        }
      }
    });
    on<LoadNewTree>((_, emit) {});
    on<LoadTopTree>((_, emit) {});
    on<LoadTreeByGenre>((value, emit) {});
    on<LoadTreeByLanguage>((value, emit) {});
    on<LoadTreeByTime>((value, emit) {});
  }

  final ITreeRepository _treeRepository;
}
