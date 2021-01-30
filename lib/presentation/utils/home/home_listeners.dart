import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';

/// @nodoc
class HomeListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, coreDatabaseState) {
          coreDatabaseState.maybeMap(
            seriesPublishedFromHomeState: (state) {
              context
                  .read<HomeDatabaseBloc>()
                  .add(HomeDatabaseEvent.seriesPublishedEVT(state.series));
            },
            orElse: () {},
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_coreDatabaseListener()];
}
