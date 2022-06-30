import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/core/footer/footer.presentation.dart';
import 'package:wine/core/page_view/horizontal_page_view_navbar.presentation.dart';
import 'package:wine/features/home/home_bloc.application.dart';
import 'package:wine/features/home/home_page_view_builder.presentation.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/home.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class HomeContentLayout extends StatefulWidget {
  /// @nodoc
  const HomeContentLayout({super.key});

  @override
  State<HomeContentLayout> createState() => _HomeContentLayoutState();
}

class _HomeContentLayoutState extends State<HomeContentLayout> {
  final PageController _pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: maxContentLayoutWidth,
        ),
        child: Column(
          children: <Widget>[
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return HorizontalPageViewNavbar(
                  colors: const <Color>[pastelYellow, pastelPink],
                  controller: _pageController,
                  pageIndex: state.currentPageViewIdx,
                  titles: homePageViewKeys,
                );
              },
            ),
            HomePageViewBuilder(
              controller: _pageController,
            ),
            if (kIsWeb) const Footer(),
          ],
        ),
      ),
    );
  }
}
