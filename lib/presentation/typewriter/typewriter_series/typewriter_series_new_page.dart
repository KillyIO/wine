import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_series/typwriter_series_layout.dart';

/// @nodoc
class TypewriterSeriesNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterSeriesBloc>()
        ..add(const TypewriterSeriesEvent.launchAsNewSeries()),
      child: const TypewriterSeriesLayout(),
    );
  }
}
