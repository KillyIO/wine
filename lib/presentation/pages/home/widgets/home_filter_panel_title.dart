import 'package:flutter/material.dart';

class HomeFilterPanelTitle extends StatelessWidget {
  final String title;

  const HomeFilterPanelTitle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
