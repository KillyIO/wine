import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/application/typewriter/tree/typewriter_tree_bloc.dart';
import 'package:wine/features/typewriter/typewriter_tree/typwriter_tree_layout.presentation.dart';
import 'package:wine/injection.dart';

/// @nodoc
class TypewriterTreeUIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterTreeUIDPage({
    super.key,
    this.tree,
    required this.treeUID,
  });

  /// @nodoc
  final Tree? tree;

  /// @nodoc
  final String treeUID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TypewriterTreeBloc>()
        ..add(
          TypewriterTreeEvent.launchWithUID(
            UniqueID.fromUniqueString(treeUID),
            tree: tree,
          ),
        ),
      child: const TypewriterTreeLayout(),
    );
  }
}
