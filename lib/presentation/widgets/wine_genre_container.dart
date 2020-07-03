import 'package:flutter/material.dart';

class WINEGenreContainer extends StatelessWidget {
  final String title;

  const WINEGenreContainer(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Text(title ?? '', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
    );
  }
}
