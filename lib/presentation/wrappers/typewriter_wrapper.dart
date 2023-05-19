import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
@RoutePage(name: 'TypewriterWrapperRoute')
class TypewriterWrapper extends AutoRouter implements AutoRouteWrapper {
  /// @nodoc
  const TypewriterWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<TypewriterTreeBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<TypewriterBranchBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TypewriterTreeBloc, TypewriterTreeState>(
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
                  break;
                case TypewriterEndState.published:
                  context
                      .read<LibraryBloc>()
                      .add(LibraryEvent.treeUpdated(state.tree));

                  redirectDialog(
                    context,
                    <String>[
                      'Your tree has been successfully published.',
                      'You will now be redirected.'
                    ],
                    () => context.router.replace(
                      TreeRoute(
                        tree: state.tree,
                        uid: state.tree.uid.getOrCrash(),
                      ),
                    ),
                  );
                  break;
                case TypewriterEndState.saved:
                  context
                      .read<LibraryBloc>()
                      .add(LibraryEvent.treeUpdated(state.tree));

                  redirectDialog(
                    context,
                    <String>[
                      'Your tree has been successfully saved.',
                      'You will now be redirected.'
                    ],
                    () => context.router.push(const LibraryRoute()),
                  );
                  break;
              }
            },
          ),
          BlocListener<TypewriterBranchBloc, TypewriterBranchState>(
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

                  if (context.router.canPop()) {
                    context.router.pop();
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
                    () => context.router.replace(
                      BranchRoute(
                        branch: state.branch,
                        uid: state.branch.uid.getOrCrash(),
                      ),
                    ),
                  );
                  break;
                case TypewriterEndState.saved:
                  context
                      .read<LibraryBloc>()
                      .add(LibraryEvent.branchUpdated(state.branch));

                  redirectDialog(
                    context,
                    <String>[
                      'Your branch has been successfully saved.',
                      'You will now be redirected.'
                    ],
                    () => context.router.push(const LibraryRoute()),
                  );
                  break;
              }
            },
          ),
        ],
        child: this,
      ),
    );
  }
}
