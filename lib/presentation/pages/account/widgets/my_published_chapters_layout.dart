import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';

class MyPublishedChaptersLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
      builder: (context, acDbState) {
        if (acDbState.series.isEmpty) {
          return const Center(
            child: Text(
              'No series :(',
            ),
          );
        }
        return ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: ListView.separated(
            itemCount: acDbState.chapters.length,
            separatorBuilder: (BuildContext context, _) => Divider(
              height: 2,
              color: Colors.black12,
            ),
            itemBuilder: (BuildContext context, int index) {
              final Chapter chapter = acDbState.chapters[index];

              return GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 95.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chapter.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
