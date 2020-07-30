import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WINESelectionDialog extends StatelessWidget {
  final String title;
  final Map<String, String> selections;
  final void Function(String) onPressed;
  final VoidCallback onInfoPressed;

  const WINESelectionDialog({
    Key key,
    @required this.title,
    @required this.selections,
    @required this.onPressed,
    this.onInfoPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10.0,
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (onInfoPressed != null)
                    IconButton(icon: Icon(Feather.info, color: Colors.black), onPressed: onInfoPressed),
                ],
              ),
            ),
            ListView.builder(
              itemCount: selections.length,
              itemBuilder: (_, int idx) {
                final String key = selections.keys.elementAt(idx);
                return Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
                  child: ListTile(
                    onTap: () => onPressed(key),
                    title: Text(
                      selections[key],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
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