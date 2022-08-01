// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sampleproject/model/GiveBadgeContract.dart';
//import 'package:flutter_application_1/employee.dart';
import 'dart:math';
import 'package:sampleproject/model/UserCredentials.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'employee.dart';
import 'dart:convert';

class employee_m extends StatefulWidget {
  employee_m({Key? key}) : super(key: key);

  @override
  State<employee_m> createState() => _employee_mState();
}

class _employee_mState extends State<employee_m> {
  final storage = FlutterSecureStorage();
  List<String> userCred_string = [];
  List<UserCredentials> userCreds = [];

  final badgeInterface = GiveBadgeContract();

  @override
  void initState() {
    // print("object");
    GetUserCreds();
    // TODO: implement initState
    super.initState();
  }

  void GetUserCreds() async {
    String? jsonString = await storage.read(key: 'userCredentials');
    userCred_string =
        (jsonDecode(jsonString ?? "") as List<dynamic>).cast<String>();

    setState(() {
      for (String uCS in userCred_string) {
        Map<String, dynamic> data = jsonDecode(uCS);

        UserCredentials creds = UserCredentials.fromJson(data);

        userCreds.add(creds);
      }
    });
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
              itemBuilder: ((context, index) =>
                  Empl.withName(name: userCreds[index].userName ?? "Lowde", giveBadgeContract: badgeInterface,)),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: userCreds.length,
            ),
          ),
        ],
      ),
    );
  }
}
