import 'dart:io';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sampleproject/SecureStorage.dart';
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
  MainPageTile({Key? key, required this.itemNo}) : super(key: key);
  final int itemNo;
  MainPageTile.withitemNo(
    final this.itemNo,
  );

  @override
  State<MainPageTile> createState() => _MainPageTileState(itemNo);
}

class _MainPageTileState extends State<MainPageTile> {
  final storage = new SecureStorage(FlutterSecureStorage());
  List<String> usercreds_string = [];
  List<String> deployedForms_string = [];
  List<String?>? PendingForms = [];
  List<String?>? CheckStep = [];
  //List<DeployedForm?>? InputForms = [];

  List<DeployedForm> deployedForms = [];
  UserCredentials? currentuser;

  _MainPageTileState(this.itemNo);
  final int itemNo;

  @override
  void initState() {
    DoStuff();
    super.initState();
  }

  void DoStuff() async {
    await CurrentUser();
    await GetDeployedForms();
    await CheckPending();
  }

  Future CurrentUser() async {
    String? usercreds = await storage.read(key: 'currentUser');

    currentuser = UserCredentials.fromJson(jsonDecode(usercreds ?? ""));
  }

  Future GetDeployedForms() async {
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
    //print(deployedForms_string);
    //print(deployedForms);
  }

  Future CheckPending() async {
    for (int i = 0; i < deployedForms.length; i++) {
      // print('${deployedForms[i].formDetails!.processSteps![i].stepPerformers}');
      for (int j = 0;
          j < deployedForms[i].formDetails!.processSteps!.length;
          j++) {
        if (deployedForms[i]
                .formDetails!
                .processSteps![j]
                .stepPerformers!
                .contains(currentuser!.userName) &&
            deployedForms[i].formDetails!.processSteps![j].stepCompleted ==
                false) {
          //print('Namskara Gandu');
          if (deployedForms[i].formDetails!.processSteps![j].stepType! ==
                  'Input Step' ||
              deployedForms[i].formDetails!.processSteps![j].stepType! ==
                  'Approval Step') {
            //print('Lowde');
            PendingForms!.add(deployedForms[i].formDetails!.formName);
            CheckStep!
                .add(deployedForms[i].formDetails!.processSteps![j].stepType);
          }
        }
      }
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
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '${PendingForms![itemNo]}',

                        // Add Form Details
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(185, 0, 0, 0),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  if (CheckStep![itemNo] == 'Input Step')
                    MaterialButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: const Text(
                        'Input',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  if (CheckStep![itemNo] == 'Approval Step')
                    MaterialButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: const Text(
                        'Approve',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                ],
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
}
