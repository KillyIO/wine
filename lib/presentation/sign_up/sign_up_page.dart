import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/sign_up/sign_up_layout.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({
    required this.navigateTo,
    super.key,
  });

  final PageRouteInfo<dynamic> navigateTo;

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
            child: Container(
              color: Colors.black,
              height: 2,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          leading: Padding(
            padding: getAssetBackButtonPadding(mediaQuery),
            child: IconButton(
              key: const Key('sign_up_back'),
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              icon: const Icon(
                Icons.keyboard_backspace_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                context.router.replace(LogInRoute(navigateTo: navigateTo));
              },
              splashColor: Colors.transparent,
            ),
          ),
          leadingWidth: defaultToolbarItemWidth,
        ),
      ),
      body: BlocProvider(
        create: (_) => getIt<SignUpBloc>(),
        child: SafeArea(
          child: SignUpLayout(
            navigateTo: navigateTo,
          ),
        ),
      ),
    );
  }
}
