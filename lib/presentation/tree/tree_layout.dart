import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/tree/widgets/tree_branch_one.dart';
import 'package:wine/presentation/tree/widgets/tree_cover_layout.dart';
import 'package:wine/presentation/tree/widgets/tree_genres.dart';
import 'package:wine/presentation/tree/widgets/tree_resume_reading.dart';
import 'package:wine/presentation/tree/widgets/tree_stats.dart';
import 'package:wine/presentation/tree/widgets/tree_summary_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

/// @nodoc
class TreeLayout extends StatelessWidget {
  /// @nodoc
  const TreeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocListener<TreeBloc, TreeState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                branch: (f) => f.f.maybeMap(
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
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: TreeCoverLayout(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TreeStats(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TreeSummaryLayout(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: TreeGenres(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: TreeBranchOne(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TreeResumeReading(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
