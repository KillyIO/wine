import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

class AccountListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDbListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          if (state.publishedFromAccount) {
            context.bloc<AccountDatabaseBloc>().add(const AccountDatabaseEvent.sessionFetchedEVT());
            context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromAccountEVT());
          }
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_coreDbListener()];
}
