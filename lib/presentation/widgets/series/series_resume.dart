import 'package:flutter/material.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SeriesResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'RESUME',
            style: TextStyle(
              color: Palettes.pastelPink,
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(height: 20),
          Container() // TODO add resume where I left chapter minified
        ],
      ),
    );
  }
}
