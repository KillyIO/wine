import 'package:flutter/material.dart';
import 'package:wine/utils/palettes.dart';

typedef StringToVoidFunction = void Function(String);

class NewSeriesSelectionDialog extends StatelessWidget {
  final Map<String, String> selections;
  final StringToVoidFunction onPressed;

  const NewSeriesSelectionDialog({
    Key key,
    this.selections,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black12),
                ),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(
                  'GENRE',
                  style: TextStyle(
                    color: Palettes.darkCobaltBlue,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListView.builder(
              itemCount: selections.length,
              itemBuilder: (_, int idx) {
                final String key = selections.keys.elementAt(idx);
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black12),
                    ),
                  ),
                  child: ListTile(
                    onTap: () => onPressed(key),
                    title: Text(
                      selections[key],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
