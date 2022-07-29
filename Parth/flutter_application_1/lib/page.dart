// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import 'details.dart';
import 'main.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int user = 0;

  var random = Random();
  // int min = 1000;
  // int max = 9999;
  // int? randomNumber;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Empl> Empl_det = [
    Empl('Ram', 22),
    Empl('Lakshman', 43),
    Empl('Santosh', 65),
    Empl('Tripti', 82)
  ];

  Widget Empl_display(emp) {
    return Card(
      color: Color.fromARGB(255, 209, 237, 249),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  'NAME : ',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 55, 64, 69)),
                ),
                Text(
                  '${emp.name}',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 119, 187, 218)),
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Text(
                  'ID : ',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 55, 64, 69)),
                ),
                Text(
                  '${emp.ID}',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 20, 96, 132)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
      body: Column(children: Empl_det.map((emp) => Empl_display(emp)).toList()),
    );
  }
}
