import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/core/buttons/default_button.dart';
import 'package:wine/presentation/core/chapter/chapter_tile.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SeriesChapterOne extends StatelessWidget {
  /// @nodoc
  const SeriesChapterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'CHAPTER ONE',
            style: TextStyle(
              color: pastelPink,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ),
        BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            if (state.chapterOne != null) {
              return ChapterTile(
                title: state.chapterOne!.title.getOrCrash(),
                coverURL: state.chapterOne!.coverURL.getOrCrash(),
                onPressed: () {},
              );
            }
            if (state.authorIsUser) {
              return DefaultButton(
                color: pastelPink,
                hasRoundedCorners: true,
                title: 'WRITE FIRST CHAPTER',
                width: mediaQuery.width,
              );
            }
            return Container();
          },
        ),
      ],
    );
  }
}
