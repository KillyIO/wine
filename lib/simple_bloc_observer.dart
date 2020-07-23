import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SimpleBlocObserver extends BlocObserver {
  final Logger _logger = Logger();

  @override
  void onEvent(Bloc bloc, Object event) {
    _logger.d('event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    _logger.d('event: $change');
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.d('transition: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    _logger.e('error: $error, stacktrace: $stacktrace');
    super.onError(cubit, error, stacktrace);
  }
}
