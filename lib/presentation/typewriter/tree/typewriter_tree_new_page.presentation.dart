import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/features/typewriter/typewriter_tree/typwriter_tree_layout.presentation.dart';
import 'package:wine/injection.dart';

/// @nodoc
class TypewriterTreeNewPage extends StatelessWidget {
  /// @nodoc
  const TypewriterTreeNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterTreeBloc>()
        ..add(const TypewriterTreeEvent.launchAsNewTree()),
      child: const TypewriterTreeLayout(),
    );
  }
}
