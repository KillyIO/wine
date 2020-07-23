import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/create_account/widgets/create_account_form_layout.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/themes.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(41.5),
          child: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(color: Colors.black, height: 2.0),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: WINELeadingImageButton(
                imagePath: 'assets/img/back_button.png',
                onPressed: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  ExtendedNavigator.root.pop();
                },
              ),
            ),
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<CreateAccountAuthenticationBloc>()),
            BlocProvider(create: (context) => getIt<CreateAccountDatabaseBloc>()),
          ],
          child: CreateAccountFormLayout(),
        ),
      ),
    );
  }
}
