import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/typewriter/typewriter_branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/typewriter/widgets/branch/typewriter_page_view_builder.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/constants/typewriter.dart';
import 'package:wine/utils/functions/dialog_functions.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class TypewriterBranchLayout extends StatelessWidget {
  /// @nodoc
  TypewriterBranchLayout({Key? key}) : super(key: key);

  final PageController _pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocConsumer<TypewriterBranchBloc, TypewriterBranchState>(
        buildWhen: (previous, current) =>
            current.isProcessing != previous.isProcessing,
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                branch: (f) => f.f.maybeMap(
                  branchOneAlreadyExists: (_) async => baseErrorDialog(
                    context,
                    <String>[
                      'Branch 1 already published!',
                      'Only one branch 1 can be publish per tree.',
                    ],
                  ),
                  branchNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Branch not found!'],
                  ),
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
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
                  .add(LibraryEvent.branchDeleted(state.branch.uid));

              if (context.router.root.canPopSelfOrChildren) {
                context.router.root.pop();
              }
              break;
            case TypewriterEndState.published:
              context
                  .read<LibraryBloc>()
                  .add(LibraryEvent.branchUpdated(state.branch));

              redirectDialog(
                context,
                <String>[
                  'Your branch has been successfully published.',
                  'You will now be redirected.'
                ],
                () => handleAuthRedirect(
                  context,
                  navigateTo: BranchRoute(
                    branch: state.branch,
                    uid: state.branch.uid.getOrCrash(),
                  ),
                ),
              );
              break;
            case TypewriterEndState.saved:
              if (state.isEdit) {
                context
                    .read<LibraryBloc>()
                    .add(LibraryEvent.branchUpdated(state.branch));
              }

              redirectDialog(
                context,
                <String>[
                  'Your branch has been successfully saved.',
                  'You will now be redirected.'
                ],
                () => handleAuthRedirect(
                  context,
                  navigateTo: const LibraryRoute(),
                  popUntil: state.isEdit,
                ),
              );
              break;
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state.isProcessing,
            child: Column(
              children: [
                BlocBuilder<TypewriterBranchBloc, TypewriterBranchState>(
                  buildWhen: (previous, current) =>
                      current.currentPageViewIdx != previous.currentPageViewIdx,
                  builder: (context, state) {
                    return HorizontalPageViewNavbar(
                      colors: const <Color>[pastelYellow, pastelPink],
                      controller: _pageController,
                      pageIndex: state.currentPageViewIdx,
                      titles: typewriterBranchPageViewKeys,
                    );
                  },
                ),
                TypewriterPageViewBuilder(
                  pageController: _pageController,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
