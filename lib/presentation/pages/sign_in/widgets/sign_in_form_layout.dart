import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/presentation/pages/sign_in/utils/sign_in_authentication_methods.dart';
import 'package:wine/presentation/pages/sign_in/utils/sign_in_listeners.dart';
import 'package:wine/presentation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';

class SignInFormLayout extends StatefulWidget {
  @override
  _SignInFormLayoutState createState() => _SignInFormLayoutState();
}

class _SignInFormLayoutState extends State<SignInFormLayout> with TickerProviderStateMixin {
  SignInAuthenticationMethods _siAuthMethods;
  SignInListeners _siListeners;

  @override
  void initState() {
    super.initState();
    _siAuthMethods = SignInAuthenticationMethods(context);
    _siListeners = SignInListeners(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: _siListeners.listeners,
      child: BlocBuilder<SignInAuthenticationBloc, SignInAuthenticationState>(
        builder: (context, siAuthState) {
          return BlocBuilder<SignInDatabaseBloc, SignInDatabaseState>(
            builder: (context, siDbState) {
              return SafeArea(
                child: Stack(
                  children: <Widget>[
                    SignInForm(siAuthState: siAuthState, siAuthMethods: _siAuthMethods),
                    WINELoadingScreen(vsync: this, isLoading: siAuthState.isSubmitting || siDbState.isUpdating),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
