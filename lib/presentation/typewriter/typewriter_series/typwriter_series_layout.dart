import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/dialogs/warning_dialog.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_genres.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_selection_dialog.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_selection_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_switch_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_top_title.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/languages.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/constants/series.dart';
import 'package:wine/utils/functions/dialog_functions.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class TypewriterSeriesLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: maxContentLayoutWidth,
        ),
        child: BlocConsumer<TypewriterSeriesBloc, TypewriterSeriesState>(
          buildWhen: (previous, current) =>
              current.isProcessing != previous.isProcessing,
          listener: (context, state) {
            state.failureOption.when(
              some: (value) => value.when(
                ok: (_) {},
                err: (err) => err.maybeMap(
                  defaultCovers: (f) => f.f.maybeMap(
                    defaultCoverURLsNotFetched: (_) async => baseErrorDialog(
                      context,
                      <String>['Cover not found!'],
                    ),
                    orElse: () {},
                  ),
                  sessions: (f) => f.f.maybeMap(
                    sessionNotFound: (_) async => baseErrorDialog(
                      context,
                      <String>['Session not found!'],
                    ),
                    orElse: () {},
                  ),
                  orElse: () {},
                ),
              ),
              none: () {},
            );

            switch (state.endState) {
              case TypewriterEndState.deleted:
                // TODO(SSebigo): add delete from home (just in case)
                context
                    .read<LibraryBloc>()
                    .add(LibraryEvent.seriesDeleted(state.series.uid));

                if (context.router.root.canPopSelfOrChildren) {
                  context.router.root.pop();
                }
                break;
              case TypewriterEndState.published:
                // TODO(SSebigo): nav to series info page
                break;
              case TypewriterEndState.saved:
                redirectDialog(
                  context,
                  <String>[
                    'Your series has been successfully saved.',
                    'You will now be redirected.'
                  ],
                  () => handleAuthRedirect(
                    context,
                    navigateTo: const LibraryRoute(),
                  ),
                );
                break;
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state.isProcessing,
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: ListView(
                  children: <Widget>[
                    const TypewriterTopTitle(title: 'SERIES DETAILS'),
                    const TextFieldLabel(title: 'COVER'),
                    BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                      builder: (context, state) {
                        return TypewriterCover(
                          coverURL: state.coverURL,
                          onPressed: () => context
                              .read<TypewriterSeriesBloc>()
                              .add(
                                const TypewriterSeriesEvent.addCoverPressed(),
                              ),
                        );
                      },
                    ),
                    BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                      builder: (context, state) {
                        return TypewriterTextField(
                          controller: state.titleController,
                          label: 'TITLE*',
                          hintText: 'Less than  words',
                          onChanged: (value) => context
                              .read<TypewriterSeriesBloc>()
                              .add(TypewriterSeriesEvent.titleChanged(value)),
                          validator: (_) => state.title.value.match(
                            (_) => null,
                            (err) => err.maybeMap(
                              emptyInput: (_) => 'The title must not be empty.',
                              tooLongInput: (_) =>
                                  'The title must be less than words long.',
                              orElse: () => null,
                            ),
                          ),
                          wordCount: '${state.titleWordCount}/$titleMaxWords',
                          wordCountError: state.titleWordCount == 0 ||
                              state.titleWordCount > titleMaxWords,
                        );
                      },
                    ),
                    BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                      builder: (context, state) {
                        return TypewriterTextField(
                          controller: state.subtitleController,
                          label: 'SUBTITLE (OPTIONAL)',
                          hintText: 'Less than  words',
                          onChanged: (value) => context
                              .read<TypewriterSeriesBloc>()
                              .add(
                                TypewriterSeriesEvent.subtitleChanged(value),
                              ),
                          validator: (_) => state.subtitle.value.match(
                            (_) => null,
                            (err) => err.maybeMap(
                              tooLongInput: (_) =>
                                  'The subtitle must be less than words long.',
                              orElse: () => null,
                            ),
                          ),
                          wordCount:
                              '${state.subtitleWordCount}/$subtitleMaxWords',
                          wordCountError:
                              state.subtitleWordCount > subtitleMaxWords,
                        );
                      },
                    ),
                    BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                      builder: (context, state) {
                        return TypewriterTextField(
                          controller: state.summaryController,
                          label: 'SUMMARY*',
                          hintText: 'Less than  words',
                          onChanged: (value) => context
                              .read<TypewriterSeriesBloc>()
                              .add(TypewriterSeriesEvent.summaryChanged(value)),
                          validator: (_) => state.summary.value.match(
                            (_) => null,
                            (err) => err.maybeMap(
                              emptyInput: (_) =>
                                  'The summary must not be empty.',
                              tooLongInput: (_) =>
                                  'The summary must be less than words long.',
                              orElse: () => null,
                            ),
                          ),
                          wordCount:
                              '${state.summaryWordCount}/$summaryMaxWords',
                          wordCountError: state.summaryWordCount == 0 ||
                              state.summaryWordCount > summaryMaxWords,
                        );
                      },
                    ),
                    TypewriterSelectionListTile(
                      onPressed: () => showDialog<void>(
                        context: context,
                        builder: (_) =>
                            BlocProvider<TypewriterSeriesBloc>.value(
                          value: context.read<TypewriterSeriesBloc>(),
                          child: BlocBuilder<TypewriterSeriesBloc,
                              TypewriterSeriesState>(
                            builder: (context, state) {
                              return TypewriterSelectionDialog(
                                items: genresKeys,
                                onPressed: (v) => context
                                    .read<TypewriterSeriesBloc>()
                                    .add(TypewriterSeriesEvent.genreAdded(v)),
                                selectedItems: state.genres
                                    .map((e) => e.getOrCrash())
                                    .toList(),
                                title: 'GENRES*',
                              );
                            },
                          ),
                        ),
                      ),
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
                          onChanged: (bool value) =>
                              context.read<TypewriterSeriesBloc>().add(
                                    TypewriterSeriesEvent.isNSFWChanged(
                                      isNSFW: value,
                                    ),
                                  ),
                        );
                      },
                    ),
                    BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
                      buildWhen: (p, c) => c.language != p.language,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TypewriterSelectionListTile(
                            onPressed: () => showDialog<void>(
                              context: context,
                              builder: (_) =>
                                  BlocProvider<TypewriterSeriesBloc>.value(
                                value: context.read<TypewriterSeriesBloc>(),
                                child: BlocBuilder<TypewriterSeriesBloc,
                                    TypewriterSeriesState>(
                                  builder: (context, state) {
                                    return TypewriterSelectionDialog(
                                      items: isoCountryCodes,
                                      onPressed: (v) => context
                                          .read<TypewriterSeriesBloc>()
                                          .add(
                                            TypewriterSeriesEvent
                                                .languageSelected(v),
                                          ),
                                      selectedItem: state.language.getOrNull(),
                                      title: 'LANGUAGE*',
                                    );
                                  },
                                ),
                              ),
                            ),
                            selectedItem: state.language.getOrNull(),
                            title: 'LANGUAGE*',
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: DefaultButton(
                        color: pastelBlue,
                        isProcessing: state.isProcessing,
                        title: 'SAVE',
                        width: mediaQuery.width,
                        onPressed: () => context
                            .read<TypewriterSeriesBloc>()
                            .add(
                              const TypewriterSeriesEvent.saveButtonPressed(),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: DefaultButton(
                        color: pastelPink,
                        title: 'PUBLISH',
                        width: mediaQuery.width,
                        onPressed: () =>
                            context.read<TypewriterSeriesBloc>().add(
                                  const TypewriterSeriesEvent
                                      .publishButtonPressed(),
                                ),
                      ),
                    ),
                    if (state.isEdit && !state.series.isPublished)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: DefaultButton(
                          color: error,
                          title: 'DELETE',
                          width: mediaQuery.width,
                          onPressed: () => showDialog<void>(
                            context: context,
                            builder: (_) => WarningDialog(
                              buttonText: 'CONTINUE',
                              messages: const [
                                'Do you really want to delete this series?',
                              ],
                              onPressed: () {
                                context
                                  ..read<TypewriterSeriesBloc>().add(
                                    const TypewriterSeriesEvent
                                        .deleteButtonPressed(),
                                  )
                                  ..router.root.pop(true);
                              },
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
