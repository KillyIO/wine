import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_form_layout.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/themes.dart';

class SignInPage extends StatelessWidget {
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
              child: Container(
                color: Colors.black,
                height: 2.0,
              ),
            ),
            brightness: Brightness.light,
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: WINELeadingImageButton(
                imagePath: 'assets/img/back_button.png',
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<SignInAuthenticationBloc>()),
            BlocProvider(create: (context) => getIt<SignInDatabaseBloc>()),
          ],
          child: SignInFormLayout(),
        ),
      ),
    );
  }
}
