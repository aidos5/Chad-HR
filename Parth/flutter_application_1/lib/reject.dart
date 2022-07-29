// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';

class reject extends StatefulWidget {
  String? subject;
  String? reason;
  int num = 0;
  reject({required String subject, required String reason, required int num}) {
    this.subject = subject;
    this.reason = reason;
    this.num = num;
  }

  @override
  State<reject> createState() => _rejectState();
}

class _rejectState extends State<reject> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Container(
          //width: MediaQuery.of(context).size.width / 5,
          //height: 300,
          width: width / 2,
          height: height / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 170, 206, 235),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(children: [
                  Text(
                    'FROM : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    'Employee_${widget.num + 1}',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  ),
                  SizedBox(height: 18, width: 85),
                  //Text('o'),

                  Container(
                    width: width / 25,
                    height: height / 30,
                    child: RaisedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                  color: Colors.green[200],
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        padding: const EdgeInsets.all(20),
                                        // color:
                                        //     Color.fromARGB(255, 170, 206, 235),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 170, 206, 235),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'FROM : ',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 55, 64, 69)),
                                                ),
                                                Text(
                                                  'Employee_${widget.num + 1}',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 20, 96, 132)),
                                                ),
                                                SizedBox(
                                                    height: 28, width: 950),
                                                SizedBox(
                                                  height: 55,
                                                  width: 190,
                                                  child: MaterialButton(
                                                    child: Text('Back',
                                                        style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 35, 38, 40),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 2.0,
                                                          fontSize: 25,
                                                        )),
                                                    color: Color.fromARGB(
                                                        255, 55, 146, 231),
                                                    onPressed: () {
                                                      showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return Home();
                                                          });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  'SUBJECT : ',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 55, 64, 69)),
                                                ),
                                                Text(
                                                  '${widget.subject}',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 20, 96, 132)),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  'REASON : ',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 55, 64, 69)),
                                                ),
                                                Text(
                                                  '${widget.reason}',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 20, 96, 132)),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  'CONTENT : ',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 55, 64, 69)),
                                                ),
                                                Text(
                                                  '--------------',
                                                  style: TextStyle(
                                                      fontSize: 28.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          255, 20, 96, 132)),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 200),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                              ;
                            });
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
                SizedBox(height: 5),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: width / 15,
                        height: height / 30,
                        child: Text(
                          'SUBJECT : ',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 55, 64, 69)),
                        ),
                      ),
                      Container(
                        width: width / 11,
                        height: height / 30,
                        child: Text(
                          '${widget.subject}',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 20, 96, 132)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: width / 4,
                  height: height / 30,
                  child: Container(
                    width: width / 15,
                    height: height / 30,
                    child: Row(
                      children: [
                        Text(
                          'REASON : ',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 55, 64, 69)),
                        ),
                        Container(
                          width: width / 15,
                          height: height / 30,
                          child: Text(
                            '${widget.reason}',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 20, 96, 132)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'CONTENT : ',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 55, 64, 69)),
                    ),
                    Text(
                      '--------------',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 20, 96, 132)),
                    )
                  ],
                ),
                SizedBox(height: 60),
              ],
            ),
          )),
    );
  }
}
