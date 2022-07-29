import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(
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
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
      child: Column(
        children: [
          Expanded(
            child: ListTile(
              tileColor: Colors.blue,
              onTap: () {},
              hoverColor: Colors.orange,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: null,
                child: const Text(
                  'Edit',
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: null,
                child: const Text(
                  'Create',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
