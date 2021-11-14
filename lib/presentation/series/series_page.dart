import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/series/series.dart';

/// @nodoc
class SeriesPage extends StatelessWidget {
  /// @nodoc
  const SeriesPage({
    Key? key,
    @pathParam required this.id,
    @queryParam this.series,
  }) : super(key: key);

  /// nodoc
  final String id;

  /// @nodoc
  final Series? series;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
