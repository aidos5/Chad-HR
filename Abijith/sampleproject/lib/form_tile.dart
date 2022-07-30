import 'package:flutter/material.dart';

class FormTile extends StatelessWidget {
  final int itemNo;

  const FormTile(
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.defaultRouteName;
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.defaultRouteName;
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
