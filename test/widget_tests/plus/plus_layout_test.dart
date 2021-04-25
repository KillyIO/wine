import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/presentation/plus/plus_layout.dart';

import '../../mocks/auth_mocks.dart';
import '../utils/main_widget.dart';

void main() {
  group('PlusLayout', () {
    IAuthFacade _authFacade;

    setUp(() {
      _authFacade = MockAuthFacade();
    });

    testWidgets(
      'Should find 3 buttons + text PLUS',
      (WidgetTester tester) async {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);

        await tester.pumpWidget(MainWidget(
          child: BlocProvider(
            create: (_) =>
                AuthBloc(_authFacade)..add(const AuthEvent.authChanged()),
            child: const PlusLayout(),
          ),
        ));
        await tester.pump();

        expect(find.byType(AssetButton), findsOneWidget);
        expect(find.text('PLUS'), findsOneWidget);

        expect(find.byKey(const Key('plus_library_button')), findsOneWidget);
        expect(find.byKey(const Key('plus_settings_button')), findsOneWidget);
        expect(find.byKey(const Key('plus_about_button')), findsOneWidget);
      },
    );
  });
}
