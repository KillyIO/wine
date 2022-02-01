import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/presentation/core/branch/branch_index.dart';
import 'package:wine/presentation/core/branch/branch_leaf.dart';
import 'package:wine/presentation/core/branch/branch_title.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class BranchLayout extends StatelessWidget {
  /// @nodoc
  const BranchLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              ListView(
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
                    padding: const EdgeInsets.only(bottom: 25, top: 75),
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return BranchLeaf(leafController: state.leafController);
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
