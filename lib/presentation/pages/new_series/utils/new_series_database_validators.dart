import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';

class NewSeriesDatabaseValidators {
  final BuildContext context;

  NewSeriesDatabaseValidators(this.context);

  String subtitleValidator() => context.bloc<NewSeriesDatabaseBloc>().state.subtitle.value.fold(
        (f) => f.maybeMap(
          longInput: (_) => 'The title must be less than 10 words long.',
          orElse: () => null,
        ),
        (_) => null,
      );

  String summaryValidator() => context.bloc<NewSeriesDatabaseBloc>().state.summary.value.fold(
        (f) => f.maybeMap(
          emptyInput: (_) => 'The summary must not be empty.',
          longInput: (_) => 'The summary must be less than 200 words long.',
          orElse: () => null,
        ),
        (_) => null,
      );

  String titleValidator() => context.bloc<NewSeriesDatabaseBloc>().state.title.value.fold(
        (f) => f.maybeMap(
          emptyInput: (_) => 'The title must not be empty.',
          longInput: (_) => 'The title must be lass than 10 words long.',
          orElse: () => null,
        ),
        (_) => null,
      );
}
