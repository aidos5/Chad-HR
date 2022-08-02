// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class Boxer extends StatefulWidget {
  String? title;
  String? description;

  Boxer(this.title, this.description);

  @override
  State<Boxer> createState() => _BoxerState(title, description);
}

class _BoxerState extends State<Boxer> {
  int a = 255;
  int b = 77;
  int c = 158;
  int d = 224;
  bool click = true;

  String? title;
  String? description;

  _BoxerState(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 00),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 173, 209, 238),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     RaisedButton(
              //       onPressed: () {
              //         setState(() {
              //           click = !click;
              //           a = 255;
              //           b = 119;
              //           c = 187;
              //           d = 218;
              //         });
              //       },
              //       child: Text('Mark as Read'),
              //       color: Color.fromARGB(a, b, c, d),
              //     )
              //   ],
              // ),
              // Row(
              //   children: [
              //     Text(
              //       'DATE : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       'DD/MM/YYYY',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     )
              //   ],
              // ),
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
                    title!,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    description!,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                    overflow: TextOverflow.ellipsis,
                    maxLines: null,
                  ),
                ],
              ),
            ]),
          ),
          Divider(
            color: Colors.grey,
            height: 20,
          ),
        ],
      ),
    );
  }
}
