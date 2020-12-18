import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/series_editor/series_editor_form_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class SeriesEditorPage extends StatelessWidget {
  /// @nodoc
  const SeriesEditorPage({
    Key key,
    @required this.editorContentOrigin,
    this.seriesDraft,
  }) : super(key: key);

  /// @nodoc
  final EditorContentOrigin editorContentOrigin;

  /// @nodoc
  final Series seriesDraft;

  SeriesEditorDatabaseBloc _getDatabaseBloc(BuildContext context) {
    switch (editorContentOrigin) {
      case EditorContentOrigin.account:
        return getIt<SeriesEditorDatabaseBloc>()
          ..add(SeriesEditorDatabaseEvent.seriesEditorLaunchedFromAccountEVT(
            context,
            seriesDraft,
          ));

      case EditorContentOrigin.home:
        return getIt<SeriesEditorDatabaseBloc>()
          ..add(SeriesEditorDatabaseEvent.seriesEditorLaunchedFromHomeEVT(
            context,
          ));

      default:
        return getIt<SeriesEditorDatabaseBloc>();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [BlocProvider(create: _getDatabaseBloc)],
        child: const SeriesEditorFormLayout(),
      ),
    );
  }
}
