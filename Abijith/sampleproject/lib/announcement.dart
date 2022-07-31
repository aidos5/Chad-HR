// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:json_annotation/json_annotation.dart';
import 'announcement_box.dart';
import 'rolessave.dart';

String dropdownValue = 'HR';

List<String> Roles = ['HR', 'Manager', 'Boss', 'CEO', 'Employee'];

@JsonSerializable()
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          announcement_dialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

announcement_dialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
            return Dialog(
              child: Container(
                width: 1000,
                height: 700,
                color: Colors.amber,
                child: Column(
                  children: [
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items:
                          Roles.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ), // BoxDecoration
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Announcement Title',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ), // BoxDecoration
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Subject',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        final R = RolesSave(roles: dropdownValue);
                        final json = R.toJson();
                        print('Json: ${R.toJson()}');
                        final newroles = R.toJson();
                        print('$newroles');
                      },
                      child: Text('Submit',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }));
}
