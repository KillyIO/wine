import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';

/// @nodoc
class TypewriterGenres extends StatelessWidget {
  /// @nodoc
  const TypewriterGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              for (final genre in state.genres)
                ListTile(
                  title: Text(
                    genre.getOrCrash(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
