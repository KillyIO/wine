import 'package:flutter/material.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class TreeResumeReading extends StatelessWidget {
  /// @nodoc
  const TreeResumeReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'RESUME',
            style: TextStyle(
              color: pastelPink,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ),
        // TODO(SSebigo): make something with Isar
        // to store last branch read UID
        Container(),
      ],
    );
  }
}
