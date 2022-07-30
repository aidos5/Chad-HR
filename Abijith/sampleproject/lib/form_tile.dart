import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:convert';
import 'FormBuilder.dart';
import 'package:sampleproject/model/FormDetails.dart';

class FormTile extends StatelessWidget {
  final int itemNo;
  FormDetails formDetails;

  final storage = FlutterSecureStorage();

  List<String> formDetails_string = [];

  FormTile(this.itemNo, this.formDetails);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      width: 75,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(child: Text(formDetails.formName ?? "Lowda")),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return Dialog(
                              child: Scaffold(
                              appBar: AppBar(
                                title: Text(formDetails.formName??"No Name"),
                              ),
                            ));
                          });
                        });
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.defaultRouteName;
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
