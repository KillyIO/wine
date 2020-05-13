import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wine/domain/enums/account_menu_layout_type.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/injection.dart';
import 'package:wine/utils/constants.dart';

class AccountContentLayout extends StatelessWidget {
  final AccountMenuLayoutType type;

  const AccountContentLayout({
    Key key,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AccountMenuLayoutType.chapters:
        return Container();
        break;
      case AccountMenuLayoutType.seriesDrafts:
        return ValueListenableBuilder(
          valueListenable: getIt<Box<SeriesDraft>>().listenable(),
          builder: (context, Box<SeriesDraft> box, _) {
            if (box.isEmpty) {
              return Center(
                child: Text('No series drafts :('),
              );
            }
            return ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: ListView.separated(
                itemCount: box.values.length,
                separatorBuilder: (BuildContext context, _) => Divider(
                  height: 2,
                  color: Colors.black12,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final SeriesDraft seriesDraft = box.getAt(index);

                  return SizedBox(
                    height: 95.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                seriesDraft.title,
                              ),
                              Text(
                                seriesDraft.subtitle,
                              ),
                            ],
                          ),
                        ),
                        if (seriesDraft.thumbnailPath != null &&
                            seriesDraft.thumbnailPath.isNotEmpty)
                          Image.file(File(seriesDraft.thumbnailPath))
                        else
                          Image.network(
                            'https://via.placeholder.com/600x400',
                            fit: BoxFit.contain,
                          ),
                      ],
                    ),
                  );
                  //  ListTile(
                  //   title: Text(
                  //     seriesDraft.title,
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //   ),
                  //   subtitle: Text(seriesDraft.subtitle),
                  //   trailing: seriesDraft.thumbnailPath != null &&
                  //           seriesDraft.thumbnailPath.isNotEmpty
                  //       ? Image.file(File(seriesDraft.thumbnailPath))
                  //       : Image.network(
                  //           'https://via.placeholder.com/200x100',
                  //           fit: BoxFit.contain,
                  //         ),
                  // );
                },
                shrinkWrap: true,
              ),
            );
          },
        );
        break;
      case AccountMenuLayoutType.chapterDrafts:
        return Container();
        break;
      default:
        return Container();
    }
  }
}
