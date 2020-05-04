import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NewSeriesCharactersList extends StatelessWidget {
  final List<String> characters;

  const NewSeriesCharactersList({Key key, this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: characters
          .map(
            (character) => ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  character,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Feather.minus,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
            ),
          )
          .toList(),
    );
  }
}
