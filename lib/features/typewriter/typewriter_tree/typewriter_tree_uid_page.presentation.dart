import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/typewriter/typewriter_tree/typewriter_tree_bloc.application.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';

import 'package:wine/injection.dart';
import 'package:wine/features/typewriter/typewriter_tree/typwriter_tree_layout.presentation.dart';

/// @nodoc
class TypewriterTreeUIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterTreeUIDPage({
    Key? key,
    this.tree,
    required this.treeUID,
  }) : super(key: key);

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
