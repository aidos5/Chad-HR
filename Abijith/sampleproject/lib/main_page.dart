import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final int itemNo;

  const MainPage(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      width: screenwidth / 10,
      height: screenheight / 3,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (itemNo == 0)
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Announcement',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              if (itemNo == 1)
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Pending',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              if (itemNo == 2)
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Removed',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
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
