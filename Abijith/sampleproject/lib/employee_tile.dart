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
    final urls = [
      'https://assets.euromoneydigital.com/dims4/default/eb1abe3/2147483647/strip/true/crop/1185x675+0+0/resize/800x456!/quality/90/?url=http%3A%2F%2Feuromoney-brightspot.s3.amazonaws.com%2F26%2F5b%2F3c1c1ad4fb3e8267135e06fea109%2Falibaba20logo.jpg'
    ];

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
          Image.network(
            urls[itemNo],
            height: 170,
            width: 170,
          ),
          Expanded(
            child: ListTile(
              tileColor: Color.fromARGB(255, 123, 186, 238),
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
                      onPressed: () {},
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
