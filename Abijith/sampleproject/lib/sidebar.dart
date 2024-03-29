import 'package:flutter/material.dart';
import 'package:sampleproject/announcement.dart';
import 'employee_perks.dart';
import 'employee_managment.dart';
import 'employee.dart';
import 'form.dart';
import 'main.dart';
import 'approval.dart';
import 'approval_main.dart';
import 'reject_main.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue[600],
      width: (screenwidth / 25) + 4,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (route) => false);
                },
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
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => announcement()),
                      (route) => false);
                },
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
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (context) => reject_m()),
                  //     (route) => false);

                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (route) => false);
                },
                child: Icon(
                  Icons.assignment,
                  color: Colors.white,
                  size: 35.0,
                ),
                color: Colors.blue[600]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => approval_m()),
                      (route) => false);
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
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => employee_m()),
                      (route) => false);
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => EmployeePerks()),
                    (route) => false);
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
