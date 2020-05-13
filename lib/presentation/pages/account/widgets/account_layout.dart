import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/enums/account_menu_layout_type.dart';
import 'package:wine/presentation/pages/account/widgets/account_content_layout.dart';
import 'package:wine/presentation/widgets/wine_row_menu_button.dart';
import 'package:wine/utils/palettes.dart';

class AccountLayout extends StatelessWidget {
  Color _getMenuColor(AccountMenuLayoutType type) {
    switch (type) {
      case AccountMenuLayoutType.chapters:
        return Palettes.darkCyanBlue;
        break;
      case AccountMenuLayoutType.seriesDrafts:
        return Palettes.strongCyan;
        break;
      case AccountMenuLayoutType.chapterDrafts:
        return Palettes.veryLightBlue;
        break;
      default:
        return Palettes.darkCobaltBlue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountDatabaseBloc, AccountDatabaseState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, acDbState) {
        return SafeArea(
          child: Column(
            children: <Widget>[
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                height: 30.0,
                color: _getMenuColor(acDbState.menuType),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const SizedBox(width: 20),
                      WINERowMenuButton(
                        title: 'MY SERIES',
                        color:
                            acDbState.menuType == AccountMenuLayoutType.series
                                ? Colors.white
                                : Colors.white30,
                        onPressed: () => context
                            .bloc<AccountDatabaseBloc>()
                            .add(const AccountDatabaseEvent
                                .seriesButtonPresed()),
                      ),
                      const SizedBox(width: 20),
                      WINERowMenuButton(
                        title: 'MY CHAPTERS',
                        color:
                            acDbState.menuType == AccountMenuLayoutType.chapters
                                ? Colors.white
                                : Colors.white30,
                        onPressed: () => context
                            .bloc<AccountDatabaseBloc>()
                            .add(const AccountDatabaseEvent
                                .chaptersButtonPresed()),
                      ),
                      const SizedBox(width: 20),
                      WINERowMenuButton(
                        title: 'MY SERIES DRAFTS',
                        color: acDbState.menuType ==
                                AccountMenuLayoutType.seriesDrafts
                            ? Colors.white
                            : Colors.white30,
                        onPressed: () => context
                            .bloc<AccountDatabaseBloc>()
                            .add(const AccountDatabaseEvent
                                .seriesDraftsButtonPresed()),
                      ),
                      const SizedBox(width: 20),
                      WINERowMenuButton(
                        title: 'MY CHAPTERS DRAFTS',
                        color: acDbState.menuType ==
                                AccountMenuLayoutType.chapterDrafts
                            ? Colors.white
                            : Colors.white30,
                        onPressed: () => context
                            .bloc<AccountDatabaseBloc>()
                            .add(const AccountDatabaseEvent
                                .chapterDraftsButtonPresed()),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              AccountContentLayout(
                type: acDbState.menuType,
              ),
            ],
          ),
        );
      },
    );
  }
}
