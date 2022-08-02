// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sampleproject/model/DeployedForm.dart';
import 'approval_main.dart';
import 'main.dart';

class approval extends StatefulWidget {
  final int? num;
  final String sub;
  final String from;
  DeployedForm? deployedForm;
  approval(
      {required this.num,
      required this.sub,
      required this.from,
      required this.deployedForm}) {}

  @override
  State<approval> createState() => _approvalState(
      num: num, sub: sub, from: from, deployedForm: deployedForm);
}

class _approvalState extends State<approval> {
  final int? num;
  final String sub;
  final String from;
  DeployedForm? deployedForm;
  _approvalState(
      {required this.num,
      required this.sub,
      required this.from,
      required this.deployedForm}) {}

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Container(
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 170, 206, 235),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Row(children: [
                Text(
                  'FROM : ',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 55, 64, 69)),
                ),
                Text(
                  '${widget.from}',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 20, 96, 132)),
                ),
                SizedBox(height: 40, width: 47.2),
                //Text('o'),
              ]),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'SUBJECT : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    '${widget.sub}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  )
                ],
              ),
              SizedBox(
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    OpenFormDialog(context);
                  },
                  color: Color.fromARGB(255, 231, 148, 39),
                  child: Text(
                    'OPEN',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }

  OpenFormDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return Dialog(
            child: Scaffold(
              appBar: AppBar(title: Text('Form Inputs')),
              body: Container(
                  alignment: Alignment.center,
                  child: Expanded(
                      child: ListView.builder(
                          itemCount:
                              deployedForm!.formDetails!.processSteps!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: double.maxFinite,
                              height: null,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Step ' '${index}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Input Recorded : ' +
                                        deployedForm!
                                            .formDetails!
                                            .processSteps![index]
                                            .inputRecorded!),
                                  )
                                ],
                              ),
                            );
                          }))),
            ),
          );
        });
      },
    );
  }
}
