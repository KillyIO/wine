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

    group('LeftDrawerIconPressed -', () {
      blocTest(
        'When isLeftDrawerOpen false Then yield isLeftDrawerOpen true',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc.add(const HomeNavigationEvent.leftDrawerIconPressed());
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: true,
            isRightDrawerOpen: false,
          ),
        ],
      );

      blocTest(
        'When isLeftDrawerOpen true Then yield isLeftDrawerOpen false',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc
            ..add(const HomeNavigationEvent.leftDrawerIconPressed())
            ..add(const HomeNavigationEvent.leftDrawerIconPressed());
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: true,
            isRightDrawerOpen: false,
          ),
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: false,
            isRightDrawerOpen: false,
          ),
        ],
      );
    });

    group('PageViewIndexChanged -', () {
      blocTest(
        'When pageViewIndexChanged 1 Then yield currentPageViewIdx 1',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc.add(const HomeNavigationEvent.pageViewIndexChanged(1));
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(
            currentPageViewIdx: 1,
            isLeftDrawerOpen: false,
            isRightDrawerOpen: false,
          ),
        ],
      );
    });

    group('RightDrawerIconPressed -', () {
      blocTest(
        'When isRightDrawerOpen false Then yield isRightDrawerOpen true',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc.add(const HomeNavigationEvent.rightDrawerIconPressed());
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: false,
            isRightDrawerOpen: true,
          ),
        ],
      );

      blocTest(
        'When isRightDrawerOpen true Then yield isRightDrawerOpen false',
        build: () => _homeNavigationBloc,
        act: (HomeNavigationBloc bloc) {
          return bloc
            ..add(const HomeNavigationEvent.rightDrawerIconPressed())
            ..add(const HomeNavigationEvent.rightDrawerIconPressed());
        },
        expect: () => <HomeNavigationState>[
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: false,
            isRightDrawerOpen: true,
          ),
          const HomeNavigationState(
            currentPageViewIdx: 0,
            isLeftDrawerOpen: false,
            isRightDrawerOpen: false,
          ),
        ],
      );
    });
  });
}
