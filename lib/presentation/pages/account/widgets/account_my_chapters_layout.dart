import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/pages/account/utils/account_navigation_methods.dart';
import 'package:wine/presentation/pages/account/widgets/account_vertical_navbar.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_chapter_drafts_layout.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_published_chapters_layout.dart';

class AccountMyChaptersLayout extends StatelessWidget {
  final AccountNavigationMethods acNavMethods;

  AccountMyChaptersLayout({Key key, @required this.acNavMethods}) : super(key: key);

  final List<Widget> contentLayouts = <Widget>[AccountMyPublishedChaptersLayout(), AccountMyChapterDraftsLayout()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
      builder: (context, acNavState) {
        return Row(
          children: <Widget>[
            AccountVerticalNavbar(
              acNavMethods: acNavMethods,
              items: acNavState.verticalNavbarItems,
              currentIndex: acNavState.currentVerticalNavbarIdx,
              width: MediaQuery.of(context).size.width / 5,
            ),
            Expanded(child: contentLayouts[acNavState.currentVerticalNavbarIdx]),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
