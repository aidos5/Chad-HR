import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final Widget some;
  CollapsingListTile({required this.some});

  @override
  State<CollapsingListTile> createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 4.0,
            ),
            Container(
              child: widget,
            ),
            SizedBox(
              width: 4.0,
            )
          ],
        ));
  }
}
