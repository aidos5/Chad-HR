// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/employee.dart';
import 'dart:math';

import 'employee.dart';

class employee_m extends StatelessWidget {
  List<String> names = [
    'emp_l',
    'empl_2',
    'empl_3',
    'emp_4',
    'emp_5',
    'emp_6',
    'emp_7',
    'empl_8',
    'empl9',
    'empl_10',
    'empl_11',
    'empl_13',
    'empl_14',
    'empl_15',
    'empl_16',
  ];

  List<int> ids = [
    501,
    502,
    5013,
    504,
    505,
    506,
    507,
    508,
    509,
    510,
    511,
    512,
    513,
    514,
    515,
    516,
  ];

  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 20),
          Center(
              child: Text(
            'EMPLOYEE MANAGEMENT SYSTEM',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(185, 0, 0, 0),
              decoration: TextDecoration.underline,
            ),
          )),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemBuilder: ((context, index) => Empl(name: index, id: index)),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: 40,

              // children: [
              //   Empl(name: 'Employee_1', id: 'XXXXXXX501'),
              //   Empl(name: 'Employee_2', id: 'XXXXXXX502'),
              //   Empl(name: 'Employee_3', id: 'XXXXXXX503'),
              //   Empl(name: 'Employee_4', id: 'XXXXXXX504'),
              //   Empl(name: 'Employee_5', id: 'XXXXXXX505'),
              //   Empl(name: 'Employee_6', id: 'XXXXXXX506'),
              //   Empl(name: 'Employee_7', id: 'XXXXXXX507'),
              //   Empl(name: 'Employee_8', id: 'XXXXXXX508'),
              //   Empl(name: 'Employee_9', id: 'XXXXXXX509'),
              //   Empl(name: 'Employee_10', id: 'XXXXXXX510'),
              //   Empl(name: 'Employee_11', id: 'XXXXXXX511'),
              //   Empl(name: 'Employee_12', id: 'XXXXXXX512'),
              //   Empl(name: 'Employee_13', id: 'XXXXXXX513'),
              //   Empl(name: 'Employee_14', id: 'XXXXXXX514'),
              // ]),
            ),
          ),
        ],
      ),
    );
  }
}
