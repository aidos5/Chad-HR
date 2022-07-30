import 'package:flutter/material.dart';
import 'employee_perks.dart';
import 'employee_managment.dart';
import 'employee.dart';
import 'approval.dart';
import 'approval_main.dart';

class sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue[600],
      width: (screenwidth / 25) + 4,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35.0,
                ),
                color: Colors.blue[600]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {},
                child: Icon(
                  Icons.campaign,
                  color: Colors.white,
                  size: 35.0,
                ),
                color: Colors.blue[600]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => approval_m()),
                  );
                },
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 35.0,
                ),
                color: Colors.blue[600]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => employee_m()),
                  );
                },
                child: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                  size: 35.0,
                ),
                color: Colors.blue[600]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmployeePerks()),
                );
              },
              child: Icon(
                Icons.discount,
                color: Colors.white,
                size: 35.0,
              ),
              color: Colors.blue[600],
            ),
          ),
        ],
      ),
    );
  }
}
