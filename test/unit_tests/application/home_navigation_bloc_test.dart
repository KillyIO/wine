import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';

void main() {
  late HomeNavigationBloc _homeNavigationBloc;

  setUp(() {
    _homeNavigationBloc = HomeNavigationBloc();
  });

  tearDown(() {
    _homeNavigationBloc.close();
  });

  group('HomeNavigationBloc -', () {
    blocTest(
      'When instantiating return nothing',
      build: () => _homeNavigationBloc,
      expect: () => <HomeNavigationState>[],
    );

    group('PageViewIndexChanged -', () {
      blocTest(
        'When pageViewIndexChanged 1 Then yield currentPageViewIdx 1',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc.add(const HomeNavigationEvent.pageViewIndexChanged(1));
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(currentPageViewIdx: 1),
        ],
      );
    });
  });
}
