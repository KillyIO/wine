import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/presentation/core/footer/footer.dart';
import 'package:wine/presentation/core/page_view/horizontal_page_view_navbar.dart';
import 'package:wine/presentation/home/widgets/home_page_view_builder.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/constants/home.dart';
import 'package:wine/utils/constants/palette.dart';

class HomeContentLayout extends StatefulWidget {
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
