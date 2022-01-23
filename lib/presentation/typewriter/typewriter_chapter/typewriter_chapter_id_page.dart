import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_chapter/typewriter_chapter_bloc.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_chapter_layout.dart';

/// @nodoc
class TypewriterChapterIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterChapterIDPage({
    Key? key,
    this.chapter,
    required this.chapterId,
  }) : super(key: key);

  /// @nodoc
  final Chapter? chapter;

  /// @nodoc
  final String chapterId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterChapterBloc>()
        ..add(
          TypewriterChapterEvent.launchWithID(
            UniqueID.fromUniqueString(chapterId),
            chapter: chapter,
          ),
        ),
      child: TypewriterChapterLayout(),
    );
  }
}
