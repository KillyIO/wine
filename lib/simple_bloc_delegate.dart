import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SimpleBlocDelegate extends BlocDelegate {
  final Logger logger = Logger();

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    logger.d('event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d('transition: $transition');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    logger.e('error: $error, stacktrace: $stacktrace');
  }
}
