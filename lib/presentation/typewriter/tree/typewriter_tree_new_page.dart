import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/tree/typewriter_tree_layout.dart';

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
