import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../utils/test_widget.dart';

void main() {
  group('HomeAppBar -', () {
    late IAuthFacade _authFacade;

    setUp(() {
      _authFacade = MockAuthFacade();
    });

    testWidgets('Should find 3 buttons', (tester) async {
      await tester.pumpWidget(TestWidget(
        child: MultiBlocProvider(
          providers: <BlocProvider>[
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(_authFacade),
            ),
            BlocProvider<HomeNavigationBloc>(
              create: (context) => HomeNavigationBloc(),
            ),
          ],
          child: const HomeAppBar(),
        ),
      ));

      final homeFilterButton = find.byKey(const Key('home_filter_button'));
      final homeNewSeriesButton =
          find.byKey(const Key('home_new_series_button'));
      final homeMenuButton = find.byKey(const Key('home_menu_button'));

      expect(homeFilterButton, findsOneWidget);
      expect(homeNewSeriesButton, findsOneWidget);
      expect(homeMenuButton, findsOneWidget);
    });
  });
}
