import 'package:flutter/material.dart';

/// @nodoc
class BranchTitle extends StatelessWidget {
  /// @nodoc
  const BranchTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// @nodoc
  final String? title;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Center(
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
        height: 15,
        width: MediaQuery.of(context).size.width * .5,
      ),
    );
  }
}
