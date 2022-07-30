// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user1.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey[800],
            ),
            Text('NAME',
                style: TextStyle(
                  color: Color.fromARGB(255, 70, 87, 101),
                  letterSpacing: 2.0,
                  //fontSize: 18,
                )),
            Text('USER1',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 91, 161),
                  letterSpacing: 2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 20),
            Text('USER ID',
                style: TextStyle(
                  color: Color.fromARGB(255, 70, 87, 101),
                  letterSpacing: 2.0,
                  fontSize: 18,
                )),
            Text('XXXXXXXX8774',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 91, 161),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.0,
                  fontSize: 25,
                )),
            SizedBox(height: 20),
            Text('EMAIL ID',
                style: TextStyle(
                  color: Color.fromARGB(255, 70, 87, 101),
                  letterSpacing: 2.0,
                  fontSize: 18,
                )),
            Row(children: [
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 5, 91, 161),
              ),
              Text('user1@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 91, 161),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.0,
                    fontSize: 22,
                  ))
            ]),
            SizedBox(height: 20),
            Text('FIRM ID',
                style: TextStyle(
                  color: Color.fromARGB(255, 70, 87, 101),
                  letterSpacing: 2.0,
                  fontSize: 18,
                )),
            Text('XXXXXXXX5728',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 91, 161),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.0,
                  fontSize: 25,
                )),
          ],
        ));
  }
}
