import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/presentation/pages/create_account/utils/create_account_authentication_methods.dart';
import 'package:wine/presentation/pages/create_account/utils/create_account_listeners.dart';
import 'package:wine/presentation/pages/create_account/widgets/create_account_form.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';

class CreateAccountFormLayout extends StatefulWidget {
  @override
  _CreateAccountFormLayoutState createState() => _CreateAccountFormLayoutState();
}

class _CreateAccountFormLayoutState extends State<CreateAccountFormLayout> with TickerProviderStateMixin {
  CreateAccountAuthenticationMethods _caAuthMethods;
  CreateAccountListeners _caListeners;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _caAuthMethods = CreateAccountAuthenticationMethods(context);
    _caListeners = CreateAccountListeners();
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _onPasswordChanged() => context
      .bloc<CreateAccountAuthenticationBloc>()
      .add(CreateAccountAuthenticationEvent.passwordChangedEVT(_passwordController.text));

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: _caListeners.listeners,
      child: BlocBuilder<CreateAccountAuthenticationBloc, CreateAccountAuthenticationState>(
        builder: (context, caAuthState) {
          return BlocBuilder<CreateAccountDatabaseBloc, CreateAccountDatabaseState>(
            builder: (context, caDbState) {
              return SafeArea(
                child: Stack(
                  children: <Widget>[
                    CreateAccountForm(
                      caAuthState: caAuthState,
                      caAuthMethods: _caAuthMethods,
                      passwordController: _passwordController,
                    ),
                    WINELoadingScreen(vsync: this, isLoading: caAuthState.isSubmitting || caDbState.isUpdating),
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
