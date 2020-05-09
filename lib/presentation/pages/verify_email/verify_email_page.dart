import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/verify_email/widgets/verify_email_layout.dart';
import 'package:wine/utils/themes.dart';

class VerifyEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<CreateAccountAuthenticationBloc>(),
            ),
            BlocProvider(
              create: (context) => getIt<CreateAccountDatabaseBloc>()
                ..add(
                  const CreateAccountDatabaseEvent.verifyEmailPageLaunched(),
                ),
            ),
          ],
          child: VerifyEmailLayout(),
        ),
      ),
    );
  }
}
