import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_branch/typewriter_branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/typewriter/typewriter_branch/typewriter_branch_layout.dart';

/// @nodoc
class TypewriterBranchIDPage extends StatelessWidget {
  /// @nodoc
  const TypewriterBranchIDPage({
    Key? key,
    this.branch,
    required this.branchId,
  }) : super(key: key);

  /// @nodoc
  final Branch? branch;

  /// @nodoc
  final String branchId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TypewriterBranchBloc>()
        ..add(
          TypewriterBranchEvent.launchWithID(
            UniqueID.fromUniqueString(branchId),
            branch: branch,
          ),
        ),
      child: TypewriterBranchLayout(),
    );
  }
}
