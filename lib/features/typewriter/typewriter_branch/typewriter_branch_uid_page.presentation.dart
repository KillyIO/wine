import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_branch_bloc.application.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/injection.dart';
import 'package:wine/features/typewriter/typewriter_branch/typewriter_branch_layout.presentation.dart';

/// @nodoc
class TypewriterBranchUIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterBranchUIDPage({
    Key? key,
    this.branch,
    required this.branchUID,
  }) : super(key: key);

  /// @nodoc
  final Branch? branch;

  /// @nodoc
  final String branchUID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterBranchBloc>()
        ..add(
          TypewriterBranchEvent.launchWithUID(
            UniqueID.fromUniqueString(branchUID),
            branch: branch,
          ),
        ),
      child: TypewriterBranchLayout(),
    );
  }
}
