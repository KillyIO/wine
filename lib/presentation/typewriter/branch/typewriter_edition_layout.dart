import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/core/buttons/default_button.presentation.dart';
import 'package:wine/core/dialogs/warning_dialog.presentation.dart';
import 'package:wine/core/labels/text_field_label.presentation.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_genres.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_dialog.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_selection_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_switch_list_tile.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/core/typewriter_top_title.dart';
import 'package:wine/domain/branch/licence_type.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/presentation/typewriter/widgets/branch/typewriter_quill.dart';
import 'package:wine/utils/constants/branch.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/genres.dart';
import 'package:wine/utils/constants/languages.dart';
import 'package:wine/utils/constants/licences.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TypewriterEditionLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterEditionLayout({super.key});

  String _getLeafErrorMessage(int wordCount) {
    if (wordCount > 0) {
      if (wordCount < leafMinWords) {
        return 'The leaf must be more than $leafMinWords words long.';
      }
      return 'The leaf must be less than $leafMinWords words long.';
    }
    return 'The leaf must not be empty.';
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: ListView(
        children: [
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return TypewriterTopTitle(
                title: 'BRANCH ${state.branch.index}',
              );
            },
          ),
          const TextFieldLabel(title: 'COVER'),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return TypewriterCover(
                coverURL: state.coverURL,
                onPressed: () => context.read<TypewriterBranchBloc>().add(
                      const TypewriterBranchEvent.addCoverPressed(),
                    ),
              );
            },
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return TypewriterTextField(
                controller: state.titleController,
                label: 'TITLE*',
                hintText: 'Less than $titleMaxWords words',
                onChanged: (value) => context
                    .read<TypewriterBranchBloc>()
                    .add(TypewriterBranchEvent.titleChanged(value)),
                validator: (_) => context
                    .watch<TypewriterBranchBloc>()
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
                wordCount: '${state.titleWordCount}/$titleMaxWords words',
                wordCountError: state.titleWordCount == 0 ||
                    state.titleWordCount > titleMaxWords,
              );
            },
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              return TypewriterQuill(
                controller: state.leafController,
                errorMessage: _getLeafErrorMessage(state.leafWordCount),
                hintText:
                    'More than $leafMinWords words and less than $leafMaxWords words',
                label: 'BODY*',
                wordCount: '${state.leafWordCount}/$leafMaxWords words',
                wordCountError: state.leafWordCount < leafMinWords ||
                    state.leafWordCount > leafMaxWords,
              );
            },
          ),
          TypewriterSelectionListTile(
            onPressed: () => showDialog<void>(
              context: context,
              builder: (_) => BlocProvider<TypewriterBranchBloc>.value(
                value: context.read<TypewriterBranchBloc>(),
                child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
                  builder: (context, state) {
                    return TypewriterSelectionDialog(
                      items: genresKeys,
                      onPressed: (v) => context
                          .read<TypewriterBranchBloc>()
                          .add(TypewriterBranchEvent.genreAdded(v)),
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
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            buildWhen: (previous, current) =>
                current.genres.length != previous.genres.length,
            builder: (context, state) {
              return TypewriterGenres(
                genres:
                    state.genres.map((genre) => genre.getOrCrash()).toList(),
                onPressed: (item) => context
                    .read<TypewriterBranchBloc>()
                    .add(TypewriterBranchEvent.genreRemoved(item)),
              );
            },
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            buildWhen: (previous, current) => current.isNSFW != previous.isNSFW,
            builder: (context, state) {
              return TypewriterSwitchListTile(
                title: 'NSFW/ADULT CONTENT',
                onInfoPressed: () {},
                value: state.isNSFW,
                onChanged: (bool value) =>
                    context.read<TypewriterBranchBloc>().add(
                          TypewriterBranchEvent.isNSFWChanged(
                            isNSFW: value,
                          ),
                        ),
              );
            },
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            buildWhen: (p, c) => c.language != p.language,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TypewriterSelectionListTile(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => BlocProvider<TypewriterBranchBloc>.value(
                      value: context.read<TypewriterBranchBloc>(),
                      child: BlocBuilder<TypewriterBranchBloc,
                          TypewriterBranchState>(
                        builder: (context, state) {
                          return TypewriterSelectionDialog(
                            items: isoCountryCodes,
                            onPressed: (v) =>
                                context.read<TypewriterBranchBloc>().add(
                                      TypewriterBranchEvent.languageSelected(v),
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
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            buildWhen: (p, c) => c.licence != p.licence,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TypewriterSelectionListTile(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => BlocProvider<TypewriterBranchBloc>.value(
                      value: context.read<TypewriterBranchBloc>(),
                      child: BlocBuilder<TypewriterBranchBloc,
                          TypewriterBranchState>(
                        builder: (context, state) {
                          return TypewriterSelectionDialog(
                            items: licencesKeys,
                            onPressed: (v) =>
                                context.read<TypewriterBranchBloc>().add(
                                      TypewriterBranchEvent.licenceSelected(
                                        LicenceType.values
                                            .singleWhere((e) => e.name == v),
                                      ),
                                    ),
                            selectedItem: state.licence.getOrNull()?.name,
                            title: 'LICENCE*',
                          );
                        },
                      ),
                    ),
                  ),
                  selectedItem: state.licence.getOrNull()?.name,
                  title: 'LICENCE*',
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
              builder: (context, state) {
                return DefaultButton(
                  color: pastelBlue,
                  isProcessing: state.isProcessing,
                  title: 'SAVE',
                  width: mediaQuery.width,
                  onPressed: () => context.read<TypewriterBranchBloc>().add(
                        const TypewriterBranchEvent.saveButtonPressed(),
                      ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
              builder: (context, state) {
                return DefaultButton(
                  color: pastelPink,
                  isProcessing: state.isProcessing,
                  title: 'PUBLISH',
                  width: mediaQuery.width,
                  onPressed: () => context.read<TypewriterBranchBloc>().add(
                        const TypewriterBranchEvent.publishButtonPressed(),
                      ),
                );
              },
            ),
          ),
          BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
            builder: (context, state) {
              if (state.isEdit && !state.branch.isPublished) {
                return Padding(
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
                          'Do you really want to delete this branch?',
                        ],
                        onPressed: () {
                          context
                            ..read<TypewriterBranchBloc>().add(
                              const TypewriterBranchEvent.deleteButtonPressed(),
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
