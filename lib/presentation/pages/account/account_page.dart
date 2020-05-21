import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/account/widgets/account_layout.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/themes.dart';

class AccountPage extends StatelessWidget {
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
              padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
              child: WINELeadingImageButton(
                imagePath: 'assets/img/back_button.png',
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AccountDatabaseBloc>()
                ..add(AccountDatabaseEvent.accountPageLaunched(
                  context: context,
                )),
            ),
            BlocProvider(
              create: (context) => getIt<AccountNavigationBloc>()
                ..add(AccountNavigationEvent.accountPageLaunched(
                  context: context,
                )),
            ),
          ],
          child: AccountLayout(),
        ),
      ),
    );
  }
}
