import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_branch_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

@RoutePage()
class TypewriterBranchNewPage extends StatelessWidget {
  const TypewriterBranchNewPage({
    required this.tree,
    super.key,
    this.previousBranch,
  });

  final Branch? previousBranch;

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
          create: (context) => getIt<TypewriterBranchBloc>()
            ..add(
              TypewriterBranchEvent.launchAsNewBranch(
                previousBranch: previousBranch,
                tree: tree,
              ),
            ),
          child: TypewriterBranchLayout(),
        ),
      ),
    );
  }
}
