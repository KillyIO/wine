import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/features/branch/branch_layout.presentation.dart';
import 'package:wine/injection.dart';

/// @nodoc
class BranchPage extends StatelessWidget {
  /// @nodoc
  const BranchPage({
    super.key,
    this.branch,
    @PathParam('id') required this.uid,
  });

  /// @nodoc
  final Branch? branch;

  /// nodoc
  final String uid;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (_) => getIt<BranchBloc>()
          ..add(
            BranchEvent.launchWithUID(
              UniqueID.fromUniqueString(uid),
              branch: branch,
            ),
          ),
        child: const SafeArea(child: BranchLayout()),
      ),
    );
  }
}
