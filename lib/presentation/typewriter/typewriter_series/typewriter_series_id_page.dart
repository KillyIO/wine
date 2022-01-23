import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';

import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_series/typwriter_series_layout.dart';

/// @nodoc
class TypewriterSeriesIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesIDPage({
    Key? key,
    this.series,
    required this.seriesId,
  }) : super(key: key);

  /// @nodoc
  final Series? series;

  /// @nodoc
  final String seriesId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TypewriterSeriesBloc>()
        ..add(
          TypewriterSeriesEvent.launchWithID(
            UniqueID.fromUniqueString(seriesId),
            series: series,
          ),
        ),
      child: const TypewriterSeriesLayout(),
    );
  }
}
