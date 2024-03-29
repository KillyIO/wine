import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/dialogs/warning_dialog.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_genres.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_dialog.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_switch_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_top_title.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/languages.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/constants/tree.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

class TypewriterTreeLayout extends StatelessWidget {
  const TypewriterTreeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocConsumer<TypewriterTreeBloc, TypewriterTreeState>(
        buildWhen: (previous, current) =>
            current.isProcessing != previous.isProcessing,
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                defaultCovers: (f) => f.f.maybeMap(
                  defaultCoverNotFetched: (_) async => baseErrorDialog(
                    context,
                    <String>['Cover not found!'],
                  ),
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  orElse: () {},
                ),
                tree: (f) => f.f.maybeMap(
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  treeNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Tree not found!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
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
                  .add(LibraryEvent.treeDeleted(state.tree.uid));

              if (context.router.canPop()) {
                context.router.pop();
              }
            case TypewriterEndState.published:
              redirectDialog(
                context,
                <String>[
                  'Your tree has been successfully published.',
                  'You will now be redirected.',
                ],
                onNavigate: () => context
                  ..read<LibraryBloc>()
                      .add(LibraryEvent.treeUpdated(state.tree))
                  ..router.replace(
                    TreeRoute(
                      tree: state.tree,
                      uid: state.tree.uid.getOrCrash(),
                    ),
                  ),
                onRouterPop: () => context.router.pop<bool>(true),
              );
            case TypewriterEndState.saved:
              redirectDialog(
                context,
                <String>[
                  'Your tree has been successfully saved.',
                  'You will now be redirected.',
                ],
                onNavigate: () => context
                  ..read<LibraryBloc>()
                      .add(LibraryEvent.treeUpdated(state.tree))
                  ..router.replace(const LibraryRoute()),
                onRouterPop: () => context.router.pop<bool>(true),
              );
            case TypewriterEndState.unknown:
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
                  const TypewriterTopTitle(title: 'TREE DETAILS'),
                  const TextFieldLabel(title: 'COVER'),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    builder: (context, state) {
                      return TypewriterCover(
                        coverURL: state.coverURL,
                        onPressed: () => context.read<TypewriterTreeBloc>().add(
                              const TypewriterTreeEvent.addCoverPressed(),
                            ),
                      );
                    },
                  ),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    builder: (context, state) {
                      return TypewriterTextField(
                        controller: state.titleController,
                        label: 'TITLE*',
                        hintText: 'Less than $titleMaxWords words',
                        onChanged: (value) => context
                            .read<TypewriterTreeBloc>()
                            .add(TypewriterTreeEvent.titleChanged(value)),
                        validator: (_) => context
                            .watch<TypewriterTreeBloc>()
                            .state
                            .title
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                emptyInput: (_) =>
                                    'The title must not be empty.',
                                tooLongInput: (_) =>
                                    'The title must be less than $titleMaxWords words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount:
                            '${state.titleWordCount}/$titleMaxWords words',
                        wordCountError: state.titleWordCount == 0 ||
                            state.titleWordCount > titleMaxWords,
                      );
                    },
                  ),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    builder: (context, state) {
                      return TypewriterTextField(
                        controller: state.subtitleController,
                        label: 'SUBTITLE (OPTIONAL)',
                        hintText: 'Less than $subtitleMaxWords words',
                        onChanged: (value) =>
                            context.read<TypewriterTreeBloc>().add(
                                  TypewriterTreeEvent.subtitleChanged(value),
                                ),
                        validator: (_) => context
                            .watch<TypewriterTreeBloc>()
                            .state
                            .subtitle
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                tooLongInput: (_) =>
                                    'The subtitle must be less than $subtitleMaxWords words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount:
                            '${state.subtitleWordCount}/$subtitleMaxWords words',
                        wordCountError:
                            state.subtitleWordCount > subtitleMaxWords,
                      );
                    },
                  ),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    builder: (context, state) {
                      return TypewriterTextField(
                        controller: state.synopsisController,
                        label: 'SYNOPSIS*',
                        hintText: 'Less than $synopsisMaxWords words',
                        maxLines: null,
                        onChanged: (value) => context
                            .read<TypewriterTreeBloc>()
                            .add(TypewriterTreeEvent.synopsisChanged(value)),
                        validator: (_) => context
                            .watch<TypewriterTreeBloc>()
                            .state
                            .synopsis
                            .value
                            .match(
                              (_) => null,
                              (err) => err.maybeMap(
                                emptyInput: (_) =>
                                    'The synopsis must not be empty.',
                                tooLongInput: (_) =>
                                    'The synopsis must be less than $synopsisMaxWords words long.',
                                orElse: () => null,
                              ),
                            ),
                        wordCount:
                            '${state.synopsisWordCount}/$synopsisMaxWords words',
                        wordCountError: state.synopsisWordCount == 0 ||
                            state.synopsisWordCount > synopsisMaxWords,
                      );
                    },
                  ),
                  TypewriterSelectionListTile(
                    onPressed: () => showDialog<void>(
                      context: context,
                      builder: (_) => BlocProvider<TypewriterTreeBloc>.value(
                        value: context.read<TypewriterTreeBloc>(),
                        child: BlocBuilder<TypewriterTreeBloc,
                            TypewriterTreeState>(
                          builder: (context, state) {
                            return TypewriterSelectionDialog(
                              items: genresKeys,
                              onPressed: (v) => context
                                  .read<TypewriterTreeBloc>()
                                  .add(TypewriterTreeEvent.genreAdded(v)),
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
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    buildWhen: (previous, current) =>
                        current.genres.length != previous.genres.length,
                    builder: (context, state) {
                      return TypewriterGenres(
                        genres: state.genres
                            .map((genre) => genre.getOrCrash())
                            .toList(),
                        onPressed: (item) => context
                            .read<TypewriterTreeBloc>()
                            .add(TypewriterTreeEvent.genreRemoved(item)),
                      );
                    },
                  ),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    buildWhen: (previous, current) =>
                        current.isNSFW != previous.isNSFW,
                    builder: (context, state) {
                      return TypewriterSwitchListTile(
                        title: 'NSFW/ADULT CONTENT',
                        onInfoPressed: () {},
                        value: state.isNSFW,
                        onChanged: (bool value) =>
                            context.read<TypewriterTreeBloc>().add(
                                  TypewriterTreeEvent.isNSFWChanged(
                                    isNSFW: value,
                                  ),
                                ),
                      );
                    },
                  ),
                  BlocBuilder<TypewriterTreeBloc, TypewriterTreeState>(
                    buildWhen: (p, c) => c.language != p.language,
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TypewriterSelectionListTile(
                          onPressed: () => showDialog<void>(
                            context: context,
                            builder: (_) =>
                                BlocProvider<TypewriterTreeBloc>.value(
                              value: context.read<TypewriterTreeBloc>(),
                              child: BlocBuilder<TypewriterTreeBloc,
                                  TypewriterTreeState>(
                                builder: (context, state) {
                                  return TypewriterSelectionDialog(
                                    items: isoCountryCodes,
                                    onPressed: (v) => context
                                        .read<TypewriterTreeBloc>()
                                        .add(
                                          TypewriterTreeEvent.languageSelected(
                                            v,
                                          ),
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
                      onPressed: () => context.read<TypewriterTreeBloc>().add(
                            const TypewriterTreeEvent.saveButtonPressed(),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: DefaultButton(
                      color: pastelPink,
                      isProcessing: state.isProcessing,
                      title: 'PUBLISH',
                      width: mediaQuery.width,
                      onPressed: () => context.read<TypewriterTreeBloc>().add(
                            const TypewriterTreeEvent.publishButtonPressed(),
                          ),
                    ),
                  ),
                  if (state.isEdit && !state.tree.isPublished)
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
                              'Do you really want to delete this tree?',
                            ],
                            onPressed: () {
                              context
                                ..read<TypewriterTreeBloc>().add(
                                  const TypewriterTreeEvent
                                      .deleteButtonPressed(),
                                )
                                ..router.pop(true);
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
    );
  }
}
