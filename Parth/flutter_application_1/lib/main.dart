// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/employee.dart';
import 'package:flutter_application_1/trial.dart';
import 'dart:math';
import 'approval.dart';
import 'employee.dart';
import 'reject.dart';
import 'box.dart';
import 'package:flutter/widgets.dart';
import 'trial.dart';

// class SizeConfig {
//   late MediaQueryData _mediaQueryData;
//   late double screenWidth;
//   late double screenHeight;
//   late double blockSizeHorizontal;
//   late double blockSizeVertical;
//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     blockSizeHorizontal = screenWidth / 100;
//     blockSizeVertical = screenHeight / 100;
//   }
// }

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> subject = [
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation',
    'Resignation',
    'Leave Approval',
    'Tranfer Application',
    'Salary',
    'Offical Trip',
    'Upcoming Event',
    'Project Extension',
    'Insurance',
    'Employee Perks',
    'Switching Shifts',
    'Hiring',
    'Resignation'
  ];

  List<String> reason = [
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadlin ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline ',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    'authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline',
    'Project Work',
    'official trip ',
    'No leaves left ',
    'Business expansion',
    'employee shortage',
    ' authority rejected',
    'No paid leave left',
    'Event incoming',
    'Project deadline '
  ];

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(249, 243, 229, 202),
      appBar: AppBar(
        title: Text(
          'CHAD HR',
          style: TextStyle(
            fontFamily: 'ArchitectsDaughter-Regular',
            fontSize: 23.0,

            //fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 7, 68, 133),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          Center(
            child: Text(
              'REJECTED FORMS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(185, 0, 0, 0),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, childAspectRatio: 0.8),
                itemBuilder: ((context, index) => reject(
                    subject: subject[index],
                    reason: reason[index],
                    num: index))),
          ),

          //Media(),
          // Container(
          //   width: width / 3,
          //   height: height / 3,
          //   color: Colors.purple[100],
          //   child: Text('DATE'),
          // ),
          // Container(
          //   width: width / 3,
          //   height: height / 3,
          //   color: Color.fromARGB(255, 198, 237, 121),
          //   child: Text('Upload'),
          // )
        ],
      ),
    );
  }
}
