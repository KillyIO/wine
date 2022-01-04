import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_details.dart';

/// @nodoc
class SeriesLayout extends StatelessWidget {
  /// @nodoc
  const SeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SeriesBloc, SeriesState>(
      listener: (context, state) {
        // TODO(SSebigo): implement listener
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SeriesDetails(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
