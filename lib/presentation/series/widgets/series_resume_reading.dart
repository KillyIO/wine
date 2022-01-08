import 'package:flutter/material.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SeriesResumeReading extends StatelessWidget {
  /// @nodoc
  const SeriesResumeReading({Key? key}) : super(key: key);

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
        // TODO(SSebigo): make something with Hive
        // to store last chapter read UID
        Container(),
      ],
    );
  }
}
