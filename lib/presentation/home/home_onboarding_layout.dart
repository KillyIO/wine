import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:wine/application/setup/setup_bloc.dart';

/// @nodoc
class HomeOnboardingLayout extends StatelessWidget {
  /// @nodoc
  const HomeOnboardingLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      done: const Text(
        'Start',
      ),
      onDone: () async => context
          .read<SetupBloc>()
          .add(const SetupEvent.onboardingDonePressed()),
      pages: [
        // TODO(SSebigo): add pages
        PageViewModel(
          title: 'Placeholder title',
          body: 'Placeholder body',
        ),
      ],
      showNextButton: false,
    );
  }
}
