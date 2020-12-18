import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart';

/// @nodoc
class ChapterEditorNavigationMethods {
  /// @nodoc
  ChapterEditorNavigationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index) => context
      .read<ChapterEditorNavigationBloc>()
      .add(ChapterEditorNavigationEvent.pageViewIndexChangedEVT(index));
}
