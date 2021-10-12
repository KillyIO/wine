import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/typewriter/widgets/series/typewriter_series_selection_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_genres.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_switch_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_top_title.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/series.dart';

/// @nodoc
class TypewriterSeriesLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: maxContentLayoutWidth,
          ),
          child: BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
            buildWhen: (previous, current) =>
                current.isProcessing != previous.isProcessing,
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state.isProcessing,
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: ListView(
                    children: <Widget>[
                      const TypewriterTopTitle(title: 'SERIES DETAILS'),
                      const TextFieldLabel(title: 'COVER'),
                      TypewriterCover(
                        coverURL: state.coverURL,
                        onPressed: () => context
                            .read<TypewriterSeriesBloc>()
                            .add(const TypewriterSeriesEvent.addCoverPressed()),
                      ),
                      TypewriterTextField(
                        controller: state.titleController,
                        label: 'TITLE*',
                        hintText: 'Less than $titleMaxWords words',
                        onChanged: (value) => context
                            .read<TypewriterSeriesBloc>()
                            .add(TypewriterSeriesEvent.titleChanged(value)),
                        validator: (_) => context
                            .watch<TypewriterSeriesBloc>()
                            .state
                            .title
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                emptyInput: (_) =>
                                    'The title must not be empty.',
                                tooLongInput: (_) =>
                                    'The title must be lass than  words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount: '${state.titleWordCount}/$titleMaxWords',
                        wordCountError: state.titleWordCount == 0 ||
                            state.titleWordCount > titleMaxWords,
                      ),
                      TypewriterTextField(
                        controller: state.subtitleController,
                        label: 'SUBTITLE (OPTIONAL)',
                        hintText: 'Less than $subtitleMaxWords words',
                        onChanged: (value) => context
                            .read<TypewriterSeriesBloc>()
                            .add(TypewriterSeriesEvent.subtitleChanged(value)),
                        validator: (_) => context
                            .watch<TypewriterSeriesBloc>()
                            .state
                            .subtitle
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                tooLongInput: (_) =>
                                    'The subtitle must be lass than  words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount:
                            '${state.subtitleWordCount}/$subtitleMaxWords',
                        wordCountError:
                            state.subtitleWordCount > subtitleMaxWords,
                      ),
                      TypewriterTextField(
                        controller: state.summaryController,
                        label: 'SUMMARY*',
                        hintText: 'Less than $summaryMaxWords words',
                        onChanged: (value) => context
                            .read<TypewriterSeriesBloc>()
                            .add(TypewriterSeriesEvent.summaryChanged(value)),
                        validator: (_) => context
                            .watch<TypewriterSeriesBloc>()
                            .state
                            .summary
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                emptyInput: (_) =>
                                    'The summary must not be empty.',
                                tooLongInput: (_) =>
                                    'The summary must be lass than  words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount: '${state.summaryWordCount}/$summaryMaxWords',
                        wordCountError: state.summaryWordCount == 0 ||
                            state.summaryWordCount > summaryMaxWords,
                      ),
                      TypewriterSeriesSelectionListTile(
                        items: genresKeys,
                        onPressed: (item) => context
                            .read<TypewriterSeriesBloc>()
                            .add(TypewriterSeriesEvent.genreAdded(item)),
                        title: 'GENRES*',
                      ),
                      BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                        buildWhen: (previous, current) =>
                            current.genres.length != previous.genres.length,
                        builder: (context, state) {
                          return TypewriterGenres(
                            genres: state.genres
                                .map((genre) => genre.getOrCrash())
                                .toList(),
                            onPressed: (item) => context
                                .read<TypewriterSeriesBloc>()
                                .add(TypewriterSeriesEvent.genreRemoved(item)),
                          );
                        },
                      ),
                      BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                        buildWhen: (previous, current) =>
                            current.isNSFW != previous.isNSFW,
                        builder: (context, state) {
                          return TypewriterSwitchListTile(
                            title: 'NSFW/ADULT CONTENT',
                            onInfoPressed: () {},
                            value: state.isNSFW,
                            onChanged: (bool value) => context
                                .read<TypewriterSeriesBloc>()
                                .add(TypewriterSeriesEvent.isNSFWChanged(
                                  isNSFW: value,
                                )),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
