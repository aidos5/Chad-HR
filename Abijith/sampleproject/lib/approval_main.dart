// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:json_serializable/builder.dart';
import 'package:sampleproject/SecureStorage.dart';
import 'package:sampleproject/model/UserCredentials.dart';
//import 'package:flutter_application_1/employee.dart';
import 'dart:math';
import 'approval.dart';
import 'employee.dart';
import 'dart:convert';
import 'package:sampleproject/model/DeployedForm.dart';
import 'main.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:json_dynamic_form/JsonDynamicForm.dart';

class approval_m extends StatefulWidget {
  @override
  State<approval_m> createState() => _HomeState();
}

class _HomeState extends State<approval_m> {
  List<String> subject = [];
  // List<String> subject = [
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation',
  //   'Resignation',
  //   'Leave Approval',
  //   'Tranfer Application',
  //   'Salary',
  //   'Offical Trip',
  //   'Upcoming Event',
  //   'Project Extension',
  //   'Insurance',
  //   'Employee Perks',
  //   'Switching Shifts',
  //   'Hiring',
  //   'Resignation'
  // ];
  List<DeployedForm?>? DeployedForms = [];
  List<DeployedForm?>? CompletedForms = [];
  List<String> deployedForms_string = [];
  final storage = new SecureStorage(FlutterSecureStorage());
  UserCredentials? currentuser;
  late JsonDynamicForm jsonDynamicForm;
  @override
  void initState() {
    DoStuff();

    super.initState();
  }

  void DoStuff() async {
    await CurrentUser();
    await GetDeployedForms();
    await Completedcheck();
  }

  Future CurrentUser() async {
    String? usercreds = await storage.read(key: 'currentUser');

    currentuser = UserCredentials.fromJson(jsonDecode(usercreds ?? ""));
  }

  Future GetDeployedForms() async {
    DeployedForms = [];
    //Populate form builder texts list
    String? jsonString = await storage.read(key: 'deployedForms');
    setState(() {
      deployedForms_string =
          (jsonDecode(jsonString ?? "") as List<dynamic>).cast<String>();
    });

    for (String s in deployedForms_string) {
      Map<String, dynamic> data = jsonDecode(s);

      DeployedForms!.add(DeployedForm.fromJson(data));
    }
  }

  Completedcheck() {
    for (int i = 0; i < DeployedForms!.length; i++) {
      // print('${deployedForms[i].formDetails!.processSteps![i].stepPerformers}');

      if (DeployedForms![i]!.concernedUsers!.contains(currentuser!.userName) &&
          DeployedForms![i]!.formStatus == true) {
        CompletedForms!.add(DeployedForms![i]);
      }
    }
  }

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
                          return MyApp();
                        });
                  },
                ),
                SizedBox(width: screenwidth / 2.55),
                Text(
                  'APPROVAL FORMS',
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
                  itemCount: CompletedForms!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: ((context, index) =>
                      approval(num: index, sub: CompletedForms![index]!.formDetails!.formName!))),
            ),
          ],
        ));
  }
}
