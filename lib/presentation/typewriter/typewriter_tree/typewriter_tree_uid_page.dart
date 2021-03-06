import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_tree/typewriter_tree_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';

import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_tree/typwriter_tree_layout.dart';

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
