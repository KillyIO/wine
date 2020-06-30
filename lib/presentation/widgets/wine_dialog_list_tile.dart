import 'package:flutter/material.dart';

class WINEDialogListTile extends StatelessWidget {
  final bool hasSelected;
  final VoidCallback onPressed;
  final String title;
  final String trailingText;

  const WINEDialogListTile({
    Key key,
    this.hasSelected,
    this.onPressed,
    this.title,
    this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        onTap: onPressed,
        title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
        trailing: hasSelected
            ? Icon(Icons.keyboard_arrow_right, color: Colors.white)
            : Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    trailingText,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
      ),
    );
  }
}
