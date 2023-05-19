import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/tree/typewriter_tree_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
@RoutePage()
class TypewriterTreeUIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterTreeUIDPage({
    @PathParam('id') required this.uid,
    super.key,
    this.tree,
  });

  /// @nodoc
  final Tree? tree;

  /// @nodoc
  final String uid;

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
                    onPressed: context.router.pop,
                    splashColor: Colors.transparent,
                  ),
                )
              : Container(),
          leadingWidth: defaultToolbarItemWidth,
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (_) => getIt<TypewriterTreeBloc>()
            ..add(
              TypewriterTreeEvent.launchWithUID(
                UniqueID.fromUniqueString(uid),
                tree: tree,
              ),
            ),
          child: const TypewriterTreeLayout(),
        ),
      ),
    );
  }
}
