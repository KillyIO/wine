import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_branch/typewriter_branch_layout.presentation.dart';

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
