import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';

class AccountProfileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        return Column(
          children: <Widget>[],
        );
      },
    );
  }
}
