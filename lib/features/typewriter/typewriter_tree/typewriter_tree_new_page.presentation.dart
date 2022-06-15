import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/typewriter/typewriter_tree/typewriter_tree_bloc.application.dart';
import 'package:wine/injection.dart';
import 'package:wine/features/typewriter/typewriter_tree/typwriter_tree_layout.presentation.dart';

/// @nodoc
class TypewriterTreeNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterTreeNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterTreeBloc>()
        ..add(const TypewriterTreeEvent.launchAsNewTree()),
      child: const TypewriterTreeLayout(),
    );
  }
}
