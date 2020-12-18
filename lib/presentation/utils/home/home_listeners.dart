import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';

/// @nodoc
class HomeListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          state.maybeMap(
            seriesPublishedFromHomeSTE: (otherState) {
              context
                  .read<HomeDatabaseBloc>()
                  .add(HomeDatabaseEvent.seriesPublishedEVT(otherState.series));
            },
            orElse: () {},
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_coreDatabaseListener()];
}
