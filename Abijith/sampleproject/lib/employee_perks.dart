import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmployeePerks extends StatelessWidget {
  final int itemNo;

  const EmployeePerks(
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
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 5),
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
            //mainAxisAlignment: MainAxisAlignment.end,

            children: [
              SizedBox(height: 75),
              Row(
                children: [
                  SizedBox(
                    width: 525,
                  ),
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.defaultRouteName;
                    },
                    child: const Text(
                      'Redeem',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
