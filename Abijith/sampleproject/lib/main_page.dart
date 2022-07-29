import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final int itemNo;

  const MainPage(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      width: 75,
      height: 100,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (itemNo == 0)
                Text(
                  'Announcement',
                  style: TextStyle(color: Colors.amber),
                ),
              if (itemNo == 1)
                Text(
                  'Pending',
                  style: TextStyle(color: Colors.amber),
                ),
              if (itemNo == 2)
                Text(
                  'Input',
                  style: TextStyle(color: Colors.amber),
                )
            ],
          ),
          Expanded(
            child: ListTile(
              tileColor: Colors.blue,
              onTap: () {},
              hoverColor: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
