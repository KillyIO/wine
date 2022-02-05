import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time/time.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/presentation/branch/widgets/branch_app_bar.dart';
import 'package:wine/presentation/branch/widgets/branch_details.dart';
import 'package:wine/presentation/branch/widgets/next_branches.dart';
import 'package:wine/presentation/core/branch/branch_index.dart';
import 'package:wine/presentation/core/branch/branch_leaf.dart';
import 'package:wine/presentation/core/branch/branch_title.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/dialog_functions.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class BranchLayout extends StatelessWidget {
  /// @nodoc
  const BranchLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocListener<BranchBloc, BranchState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                branch: (f) => f.f.maybeMap(
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
                sessions: (f) => f.f.maybeMap(
                  sessionNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Session not found!'],
                  ),
                  orElse: () {},
                ),
                settings: (f) => f.f.maybeMap(
                  settingsNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Settings were not found!'],
                  ),
                  orElse: () {},
                ),
                user: (f) => f.f.maybeMap(
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
                  userNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['User was not found!'],
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: Stack(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => context
                  .read<BranchBloc>()
                  .add(const BranchEvent.toggleDetails()),
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 50),
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return BranchIndex(index: state.branch.index);
                      },
                    ),
                  ),
                  BlocBuilder<BranchBloc, BranchState>(
                    builder: (context, state) {
                      return BranchTitle(title: state.branch.title.getOrNull());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 75),
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return BranchLeaf(leafController: state.leafController);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return DefaultButton(
                          color: pastelPink,
                          hasRoundedCorners: true,
                          title: 'WRITE NEXT BRANCH',
                          onPressed: () => handleAuthGuardedNavigation(
                            context,
                            navigateTo: TypewriterBranchNew(
                              branch: state.branch,
                              type: TypewriterType.branch,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('AD'),
                        // TODO(SSebigo): add ad banner
                        Container(
                          color: Colors.black54,
                          height: 50,
                          width: mediaQuery.width,
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<BranchBloc, BranchState>(
                    builder: (context, state) {
                      return SameAuthorNextBranches(
                        branches: state.sameAuthorNextBranches,
                        title:
                            'BRANCHES ${state.branch.index + 1} BY THE SAME AUTHOR',
                      );
                    },
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 50,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return SameAuthorNextBranches(
                          branches: state.nextBranches,
                          title: 'BRANCHES ${state.branch.index + 1}',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            IgnorePointer(
              child: BlocBuilder<BranchBloc, BranchState>(
                builder: (context, state) {
                  return AnimatedOpacity(
                    duration: 200.milliseconds,
                    opacity: state.showDetails ? .75 : 0,
                    child: Container(
                      width: mediaQuery.width,
                      height: mediaQuery.height,
                      color: Colors.black54,
                    ),
                  );
                },
              ),
            ),
            const BranchAppBar(),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BranchDetails(),
            )
          ],
        ),
      ),
    );
  }
}
