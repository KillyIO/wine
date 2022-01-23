import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_chapter/typewriter_chapter_bloc.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/dialogs/warning_dialog.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/typewriter/widgets/chapter/typewriter_quill.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_genres.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_dialog.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_switch_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_top_title.dart';
import 'package:wine/utils/constants/chapter.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/languages.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterEditionLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterEditionLayout({Key? key}) : super(key: key);

  String _getStoryErrorMessage(int wordCount) {
    if (wordCount > 0) {
      if (wordCount < storyMinWords) {
        return 'The story must be more than $storyMinWords words long.';
      }
      return 'The story must be less than $storyMinWords words long.';
    }
    return 'The story must not be empty.';
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: ListView(
        children: [
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            builder: (context, state) {
              return TypewriterTopTitle(
                title: 'CHAPTER ${state.chapter.index}',
              );
            },
          ),
          const TextFieldLabel(title: 'COVER'),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            builder: (context, state) {
              return TypewriterCover(
                coverURL: state.coverURL,
                onPressed: () => context.read<TypewriterChapterBloc>().add(
                      const TypewriterChapterEvent.addCoverPressed(),
                    ),
              );
            },
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            builder: (context, state) {
              return TypewriterTextField(
                controller: state.titleController,
                label: 'TITLE*',
                hintText: 'Less than  words',
                onChanged: (value) => context
                    .read<TypewriterChapterBloc>()
                    .add(TypewriterChapterEvent.titleChanged(value)),
                validator: (_) => context
                    .watch<TypewriterChapterBloc>()
                    .state
                    .title
                    .value
                    .match(
                      (_) => null,
                      (err) => err.maybeMap(
                        emptyInput: (_) => 'The title must not be empty.',
                        tooLongInput: (_) =>
                            'The title must be less than $titleMaxWords words long.',
                        orElse: () => null,
                      ),
                    ),
                wordCount: '${state.titleWordCount}/$titleMaxWords',
                wordCountError: state.titleWordCount == 0 ||
                    state.titleWordCount > titleMaxWords,
              );
            },
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            builder: (context, state) {
              return TypewriterQuill(
                controller: state.storyController,
                errorMessage: _getStoryErrorMessage(state.storyWordCount),
                hintText:
                    'More than $storyMinWords words and less than $storyMaxWords words',
                label: 'STORY*',
                wordCount: '${state.storyWordCount}/$storyMaxWords',
                wordCountError: state.storyWordCount < storyMinWords ||
                    state.storyWordCount > storyMaxWords,
              );
            },
          ),
          TypewriterSelectionListTile(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (_) => BlocProvider<TypewriterChapterBloc>.value(
                value: context.read<TypewriterChapterBloc>(),
                child:
                    BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
                  builder: (context, state) {
                    return TypewriterSelectionDialog(
                      items: genresKeys,
                      onPressed: (v) => context
                          .read<TypewriterChapterBloc>()
                          .add(TypewriterChapterEvent.genreAdded(v)),
                      selectedItems:
                          state.genres.map((e) => e.getOrCrash()).toList(),
                      title: 'GENRES*',
                    );
                  },
                ),
              ),
            ),
            title: 'GENRES*',
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            buildWhen: (previous, current) =>
                current.genres.length != previous.genres.length,
            builder: (context, state) {
              return TypewriterGenres(
                genres:
                    state.genres.map((genre) => genre.getOrCrash()).toList(),
                onPressed: (item) => context
                    .read<TypewriterChapterBloc>()
                    .add(TypewriterChapterEvent.genreRemoved(item)),
              );
            },
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            buildWhen: (previous, current) => current.isNSFW != previous.isNSFW,
            builder: (context, state) {
              return TypewriterSwitchListTile(
                title: 'NSFW/ADULT CONTENT',
                onInfoPressed: () {},
                value: state.isNSFW,
                onChanged: (bool value) =>
                    context.read<TypewriterChapterBloc>().add(
                          TypewriterChapterEvent.isNSFWChanged(
                            isNSFW: value,
                          ),
                        ),
              );
            },
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            buildWhen: (p, c) => c.language != p.language,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TypewriterSelectionListTile(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => BlocProvider<TypewriterChapterBloc>.value(
                      value: context.read<TypewriterChapterBloc>(),
                      child: BlocBuilder<TypewriterChapterBloc,
                          TypewriterChapterState>(
                        builder: (context, state) {
                          return TypewriterSelectionDialog(
                            items: isoCountryCodes,
                            onPressed: (v) => context
                                .read<TypewriterChapterBloc>()
                                .add(
                                  TypewriterChapterEvent.languageSelected(v),
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
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            buildWhen: (p, c) => c.licence != p.licence,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TypewriterSelectionListTile(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => BlocProvider<TypewriterChapterBloc>.value(
                      value: context.read<TypewriterChapterBloc>(),
                      child: BlocBuilder<TypewriterChapterBloc,
                          TypewriterChapterState>(
                        builder: (context, state) {
                          return TypewriterSelectionDialog(
                            items: isoCountryCodes,
                            onPressed: (v) =>
                                context.read<TypewriterChapterBloc>().add(
                                      TypewriterChapterEvent.licenceSelected(v),
                                    ),
                            selectedItem: state.licence.getOrNull(),
                            title: 'LICENCE*',
                          );
                        },
                      ),
                    ),
                  ),
                  selectedItem: state.licence.getOrNull(),
                  title: 'LICENCE*',
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
              builder: (context, state) {
                return DefaultButton(
                  color: pastelBlue,
                  isProcessing: state.isProcessing,
                  title: 'SAVE',
                  width: mediaQuery.width,
                  onPressed: () => context.read<TypewriterChapterBloc>().add(
                        const TypewriterChapterEvent.saveButtonPressed(),
                      ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
              builder: (context, state) {
                return DefaultButton(
                  color: pastelPink,
                  isProcessing: state.isProcessing,
                  title: 'PUBLISH',
                  width: mediaQuery.width,
                  onPressed: () => context.read<TypewriterChapterBloc>().add(
                        const TypewriterChapterEvent.publishButtonPressed(),
                      ),
                );
              },
            ),
          ),
          BlocBuilder<TypewriterChapterBloc, TypewriterChapterState>(
            builder: (context, state) {
              if (state.isEdit && !state.chapter.isPublished) {
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: DefaultButton(
                    color: error,
                    isProcessing: state.isProcessing,
                    title: 'DELETE',
                    width: mediaQuery.width,
                    onPressed: () => showDialog<void>(
                      context: context,
                      builder: (_) => WarningDialog(
                        buttonText: 'CONTINUE',
                        messages: const [
                          'Do you really want to delete this chapter?',
                        ],
                        onPressed: () {
                          context
                            ..read<TypewriterChapterBloc>().add(
                              const TypewriterChapterEvent
                                  .deleteButtonPressed(),
                            )
                            ..router.root.pop(true);
                        },
                      ),
                    ),
                  ),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
