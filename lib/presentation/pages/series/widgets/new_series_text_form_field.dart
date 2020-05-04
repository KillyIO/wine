import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

class NewSeriesTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const NewSeriesTextFormField({
    Key key,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Palettes.strongCyan,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Palettes.darkCobaltBlue,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Palettes.darkCobaltBlue,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Palettes.strongCyan,
          ),
        ),
      ),
    );
  }
}
