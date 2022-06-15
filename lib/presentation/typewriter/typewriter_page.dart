import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/core/typewriter_type.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/presentation/typewriter/typewriter_branch/typewriter_branch_new_page.dart';
import 'package:wine/presentation/typewriter/typewriter_branch/typewriter_branch_uid_page.dart';
import 'package:wine/presentation/typewriter/typewriter_tree/typewriter_tree_new_page.dart';
import 'package:wine/presentation/typewriter/typewriter_tree/typewriter_tree_uid_page.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
class TypewriterPage extends StatelessWidget {
  /// @nodoc
  const TypewriterPage({
    Key? key,
    this.branch,
    @PathParam('id') this.uid,
    this.tree,
    this.type = TypewriterType.unknown,
  }) : super(key: key);

  /// @nodoc
  final Branch? branch;

  /// Tree or Branch id.
  final String? uid;

  /// @nodoc
  final Tree? tree;

  /// @nodoc
  final TypewriterType type;

  Widget get _typewriter {
    switch (type) {
      case TypewriterType.branch:
        if (uid != null) {
          return TypewriterBranchUIDPage(branch: branch, branchUID: uid!);
        }
        return TypewriterBranchNewPage(
          previousBranch: branch,
          tree: tree,
        );
      case TypewriterType.tree:
        if (uid != null) {
          return TypewriterTreeUIDPage(tree: tree, treeUID: uid!);
        }
        return const TypewriterTreeNewPage();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(defaultAppBarHeight),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(color: Colors.black, height: 2),
          ),
          centerTitle: true,
          elevation: 0,
          leading: !kIsWeb
              ? Padding(
                  padding: getAssetBackButtonPadding(mediaQuery),
                  child: IconButton(
                    key: const Key('typewriter_back_button'),
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    icon: const Icon(
                      Icons.keyboard_backspace_outlined,
                      color: Colors.black,
                    ),
                    onPressed: context.router.root.pop,
                    splashColor: Colors.transparent,
                  ),
                )
              : Container(),
          leadingWidth: defaultToolbarItemWidth,
        ),
      ),
      body: SafeArea(child: _typewriter),
    );
  }
}
