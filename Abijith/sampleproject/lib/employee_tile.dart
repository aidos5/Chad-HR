import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmployeeTiles extends StatelessWidget {
  final int itemNo;

  const EmployeeTiles(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(255, 155, 197, 232),
      ),
      width: screenwidth / 3,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 5),
      child: Column(
        children: [
          Expanded(
            child: ListTile(
              tileColor: Color.fromARGB(255, 123, 186, 238),
              onTap: () {},
              hoverColor: Color.fromARGB(255, 254, 236, 210),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: screenheight / 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: MaterialButton(
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
