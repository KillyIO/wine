import 'package:flare_loading/flare_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/presentation/splash/splash_layout.dart';
import 'package:wine/presentation/splash/widgets/splash_designer.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/main_widget.dart';

void main() {
  group('SplashLayout -', () {
    testWidgets(
      'Should find one FlareLoading widget and one SplashDesigner widget',
      (tester) async {
        await tester.pumpWidget(
          MainWidget(
            child: BlocProvider(
              create: (context) => SplashBloc(
                MockAuthFacade(),
                MockDefaultCoversRepository(),
                MockSessionsRepository(),
                MockSettingsRepository(),
                MockUserRepository(),
              ),
              child: SplashLayout(),
            ),
          ),
        );

        final flareFinder = find.byKey(const Key('wine_animation_logo'));
        final designerFinder = find.byType(SplashDesigner);

        expect(find.byType(FlareLoading), findsOneWidget);
        expect(flareFinder, findsOneWidget);
        expect(designerFinder, findsOneWidget);
      },
    );
  });
}
