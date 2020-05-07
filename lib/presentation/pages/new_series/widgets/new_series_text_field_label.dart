import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class NewSeriesTextFieldLabel extends StatelessWidget {
  final String title;

  const NewSeriesTextFieldLabel({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
