import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_chapter/typewriter_chapter_bloc.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_chapter_layout.dart';

/// @nodoc
class TypewriterChapterNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterChapterNewPage({
    Key? key,
    this.previousChapter,
    required this.series,
  }) : super(key: key);

  /// @nodoc
  final Chapter? previousChapter;

  /// @nodoc
  final Series series;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterChapterBloc>()
        ..add(
          TypewriterChapterEvent.launchAsNewChapter(
            series,
            previousChapter: previousChapter,
          ),
        ),
      child: TypewriterChapterLayout(),
    );
  }
}
