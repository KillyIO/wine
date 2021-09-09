import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:wine/domain/series/series.dart';

/// @nodoc
class TypewriterSeriesIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesIDPage({
    Key? key,
    @PathParam('id') required this.seriesId,
    this.series,
  }) : super(key: key);

  /// @nodoc
  final String seriesId;

  /// @nodoc
  final Series? series;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
