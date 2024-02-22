import 'package:flutter/material.dart';

class BranchTitle extends StatelessWidget {
  const BranchTitle({
    required this.title,
    super.key,
  });

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
    return Container();
  }
}
