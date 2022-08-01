// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'dart:math';
import 'approval.dart';
import 'employee.dart';
import 'reject.dart';
import 'main.dart';

class reject_m extends StatefulWidget {
  @override
  State<reject_m> createState() => _HomeState();
}

class _HomeState extends State<reject_m> {
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
    double screenwidth = MediaQuery.of(context).size.width;
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
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return MyHomePage(title: 'CHAD HR');
                      });
                },
              ),
              SizedBox(width: screenwidth / 2.55),
              Text(
                'REJECTED FORMS',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(185, 0, 0, 0),
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: ((context, index) => reject(
                    subject: subject[index],
                    reason: reason[index],
                    num: index))),
          ),
        ],
      ),
    );
  }
}
