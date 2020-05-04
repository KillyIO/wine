import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class NewSeriesTextFormFieldLabel extends StatelessWidget {
  final String text;

  const NewSeriesTextFormFieldLabel({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palettes.darkCobaltBlue,
      width: MediaQuery.of(context).size.width,
      height: 55.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
