// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

import 'announcement_box.dart';

class announcement extends StatelessWidget {
  List<String> Box = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen',
    'twenty'
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
          SizedBox(height: 10),
          Text(
            'ANNOUNCEMENTS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(185, 0, 0, 0),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: Box.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    //Text('ANNOUNCEMENTS'),
                    Boxer(child: Box[index]),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
