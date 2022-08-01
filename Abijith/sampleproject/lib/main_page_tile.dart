import 'dart:io';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sampleproject/model/DeployedForm.dart';
import 'package:sampleproject/sidebar.dart';

import 'form_tile.dart';
import 'FormBuilder.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'model/FormDetails.dart';
import 'model/ProcessStep.dart';
import 'package:simple_json_form/simple_json_form.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'dart:convert';

import 'package:sampleproject/model/UserCredentials.dart';
import 'package:sampleproject/model/UserCredentials.dart';

class MainPageTile extends StatefulWidget {
  MainPageTile({Key? key}) : super(key: key);
  int? itemNo;
  MainPageTile.withItemNo(
    this.itemNo,
  );

  @override
  State<MainPageTile> createState() => _MainPageTileState(itemNo);
}

class _MainPageTileState extends State<MainPageTile> {
  int? itemNo;
  final storage = new FlutterSecureStorage();
  List<String> usercreds_string = [];
  List<String> deployedForms_string = [];
  List<DeployedForm?>? ApprovedForms = [];
  List<DeployedForm?>? InputForms = [];

  List<DeployedForm> deployedForms = [];
  UserCredentials? currentuser;

  _MainPageTileState(this.itemNo);

  @override
  void initState() {
    CurrentUser();
    GetDeployedForms();
    CheckPending();
    super.initState();
  }

  void CurrentUser() async {
    String? usercreds = await storage.read(key: 'currentUser');

    currentuser = UserCredentials.fromJson(jsonDecode(usercreds ?? ""));
  }

  void GetDeployedForms() async {
    //Populate form builder texts list
    String? jsonString = await storage.read(key: 'deployedForms');
    setState(() {
      deployedForms_string =
          (jsonDecode(jsonString ?? "") as List<dynamic>).cast<String>();
    });

    for (String s in deployedForms_string) {
      Map<String, dynamic> data = jsonDecode(s);

      deployedForms.add(DeployedForm.fromJson(data));
    }
  }

  void CheckPending() {
    print(deployedForms);
    for (int i = 0; i < deployedForms.length; i++) {
      print('${deployedForms[i].formDetails!.processSteps![i].stepPerformers}');
      if (deployedForms[i].formDetails!.processSteps![i].stepPerformers! ==
          currentuser)
        //     (currentuser) &&
        // deployedForms[i].formDetails!.processSteps![i].stepCompleted ==
        //     false) {
        print('Namskara Gandu');
      if (deployedForms[i].formDetails!.processSteps![i].stepType! ==
          ('Input Step')) {
        InputForms!.add(deployedForms[i]);
      }
      if (deployedForms[i].formDetails!.processSteps![i].stepType! ==
          ('Approval Step')) {
        ApprovedForms!.add(deployedForms[i]);
      }
    }

    for (int i = 0; i < ApprovedForms!.length; i++) {
      print(ApprovedForms![i]!.formDetails);
    }
    for (int i = 0; i < InputForms!.length; i++) {
      print(InputForms![i]!.formDetails);
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      width: screenwidth / 10,
      height: screenheight / 3,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Pending',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '',
                  //(DisplayApprovedForms() as String),
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '',
                  //(DisplayInputForms() as String),
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ],
          ),
          // Expanded(
          //   child: ListTile(
          //     tileColor: Colors.blue,
          //     onTap: () {},
          //     hoverColor: Colors.orange,
          //   ),
          // ),
        ],
      ),
    );
  }

  // String? DisplayApprovedForms() {
  //   return ApprovedForms![0]!.formDetails!.formName as String;
  // }

  // String? DisplayInputForms() {
  //   return InputForms![0]!.formDetails!.formName as String;
  // }
}


// ignore: must_be_immutable

