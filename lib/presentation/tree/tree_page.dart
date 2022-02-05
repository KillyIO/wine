import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/tree/tree_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
class TreePage extends StatelessWidget {
  /// @nodoc
  const TreePage({
    Key? key,
    @PathParam('id') required this.uid,
    this.tree,
  }) : super(key: key);

  /// nodoc
  final String uid;

  /// @nodoc
  final Tree? tree;

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
                    key: const Key('tree_page_back_button'),
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
        ),
      ),
      body: BlocProvider(
        create: (_) => getIt<TreeBloc>()
          ..add(
            TreeEvent.launchWithUID(
              UniqueID.fromUniqueString(uid),
              tree: tree,
            ),
          ),
        child: const SafeArea(child: TreeLayout()),
      ),
    );
  }
}
