import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

class BranchAppBar extends StatelessWidget {
  const BranchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BranchBloc, BranchState>(
      buildWhen: (previous, current) =>
          current.showDetails != previous.showDetails,
      builder: (context, state) {
        if (state.showDetails) {
          return SizedBox(
            height: defaultAppBarHeight,
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Container(color: Colors.black, height: 2),
              ),
              centerTitle: true,
              elevation: 0,
              leading: !kIsWeb
                  ? Padding(
                      padding: getAssetBackButtonPadding(
                        MediaQuery.of(context).size,
                      ),
                      child: IconButton(
                        key: const Key('tree_page_back_button'),
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
            ),
          );
        }
        return Container();
      },
    );
  }
}
