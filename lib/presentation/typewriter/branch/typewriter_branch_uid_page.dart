import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_branch_layout.dart';

/// @nodoc
class TypewriterBranchUIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterBranchUIDPage({
    required this.branchUID,
    super.key,
    this.branch,
  });

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
