import 'package:flutter/material.dart';

/// @nodoc
class ChapterStory extends StatelessWidget {
  /// @nodoc
  const ChapterStory({
    Key key,
    @required this.story,
  }) : super(key: key);

  /// @nodoc
  final String story;

  @override
  Widget build(BuildContext context) {
    if (story != null) {
      return Text(story);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black26,
          ),
          height: 10.0,
          width: MediaQuery.of(context).size.width / 4,
        ),
      ],
    );
  }
}
