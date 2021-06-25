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
    blocTest<HomeNavigationBloc, HomeNavigationState>(
      'emits [] when instanciated.',
      build: () => _homeNavigationBloc,
      expect: () => <HomeNavigationState>[],
    );

    group('PageViewIndexChanged -', () {
      blocTest<HomeNavigationBloc, HomeNavigationState>(
        '''emits [HomeNavigationState(currentPageViewIdx: 1)] when pageViewIndexChanged(1) is added.''',
        build: () => _homeNavigationBloc,
        act: (bloc) {
          return bloc.add(const HomeNavigationEvent.pageViewIndexChanged(1));
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(currentPageViewIdx: 1),
        ],
      );
    });
  });
}
