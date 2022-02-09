import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/branch/branch_layout.dart';

/// @nodoc
class BranchPage extends StatelessWidget {
  /// @nodoc
  const BranchPage({
    Key? key,
    this.branch,
    @PathParam('id') required this.uid,
  }) : super(key: key);

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
        child: SafeArea(child: BranchLayout()),
      ),
    );
  }
}
