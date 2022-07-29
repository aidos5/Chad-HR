// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';
import 'main.dart';

class Boxer extends StatefulWidget {
  final String child;

  Boxer({required this.child});

  @override
  State<Boxer> createState() => _BoxerState();
}

class _BoxerState extends State<Boxer> {
  int a = 255;
  int b = 77;
  int c = 158;
  int d = 224;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 00),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 173, 209, 238),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        click = !click;
                        a = 255;
                        b = 119;
                        c = 187;
                        d = 218;
                      });
                    },
                    child: Text('Mark as Read'),
                    color: Color.fromARGB(a, b, c, d),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'DATE : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    'DD/MM/YYYY',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  )
                ],
              ),
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
                    widget.child,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
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
