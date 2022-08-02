import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sampleproject/main_page_tile.dart';
import 'package:sampleproject/sign_in.dart';
import 'sidebar.dart';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sampleproject/SecureStorage.dart';
import 'package:sampleproject/model/DeployedForm.dart';
import 'package:sampleproject/sidebar.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:convert';

import 'package:sampleproject/model/UserCredentials.dart';
import 'userprofile.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:simple_json_form/simple_json_form.dart';
import 'package:sampleproject/model/FormDetails.dart';

import 'JsonForms.dart' as jsonForm;

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  String? title;
  MyApp.withTitle(
    this.title,
  );

  @override
  State<MyApp> createState() => MyHomePage();
}

class MyHomePage extends State<MyApp> {
  final storage = new SecureStorage(FlutterSecureStorage());

  List<String> usercreds_string = [];
  List<String> deployedForms_string = [];
  List<String?>? PendingForms = [];
  //List<String?>? CheckStep = [];
  //List<DeployedForm?>? InputForms = [];

  List<DeployedForm> deployedForms = [];
  UserCredentials? currentuser;

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
    setState(() {
      deployedForms = [];
    });
    String? jsonString = await storage.read(key: 'deployedForms');
    setState(() {
      deployedForms_string =
          (jsonDecode(jsonString ?? "") as List<dynamic>).cast<String>();
    });

    for (String s in deployedForms_string) {
      Map<String, dynamic> data = jsonDecode(s);

      setState(() {
        deployedForms.add(DeployedForm.fromJson(data));
      });
    }
    //print(deployedForms_string);
    //print(deployedForms);
  }

  Future CheckPending() async {
    setState(() {
      PendingForms = [];
    });

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
          // if (deployedForms[i].formDetails!.processSteps![j].stepType! ==
          //         'Input Step' ||
          //     deployedForms[i].formDetails!.processSteps![j].stepType! ==
          //         'Approval Step') {
          // print('Lowde');
          setState(() {
            PendingForms!.add(deployedForms[i].formDetails!.formName);
          });
          break;
          // }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String? title = 'Chad HR';

    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () async {
                await storage.flutterSecureStorage.deleteAll();
                exit(0);
              },
              icon: Icon(Icons.delete_forever))
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(),
          Container(
              width: screenwidth / 2,
              child: GridView.builder(
                itemCount: PendingForms!.length,
                itemBuilder: (context, index) => MainPageTile(
                  itemNo: index,
                  homePage: this,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3,
                  // mainAxisSpacing: 50,
                  // crossAxisSpacing: 20,
                ),
              )),
          SizedBox(
            width: screenwidth / 2.6,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => pro()),
                  (route) => false);
            },
            icon: Icon(Icons.person),
            iconSize: 40,
            color: Color.fromARGB(255, 200, 132, 189),
          ),
        ],
      ),
    );
  }
}
