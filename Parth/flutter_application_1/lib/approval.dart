// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'main.dart';

class approval extends StatefulWidget {
  final int num;
  final String sub;
  approval({required this.num, required this.sub}) {}

  @override
  State<approval> createState() => _approvalState();
}

class _approvalState extends State<approval> {
  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: 18, width: 47.2),
                  //Text('o'),

                  SizedBox(
                    width: 50,
                    child: RaisedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                  color: Colors.green[200],
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'FROM : ',
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 55, 64, 69)),
                                            ),
                                            Text(
                                              'Employee_${widget.num + 1}',
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 20, 96, 132)),
                                            ),
                                            SizedBox(height: 28, width: 780),
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
                                                    255, 162, 182, 201),
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
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 55, 64, 69)),
                                            ),
                                            Text(
                                              '${widget.sub}',
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 20, 96, 132)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text(
                                              'CONTENT : ',
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 55, 64, 69)),
                                            ),
                                            Text(
                                              '--------------',
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 20, 96, 132)),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        SizedBox(height: 225),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: 170,
                                              child: MaterialButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              "Approve form"),
                                                          content: Text(
                                                              "Are you sure ?"),
                                                          actions: [
                                                            MaterialButton(
                                                                onPressed: () {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return Home();
                                                                      });
                                                                },
                                                                child:
                                                                    Text("NO")),
                                                            MaterialButton(
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                    "YES")),
                                                          ],
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  173,
                                                                  234,
                                                                  132),
                                                        );
                                                        ;
                                                      });
                                                },
                                                color: Color.fromARGB(
                                                    255, 54, 156, 109),
                                                child: Text('Approve',
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 35, 38, 40),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 2.0,
                                                      fontSize: 25,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: 170,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              "Reject form"),
                                                          content: Text(
                                                              "Are you sure ?"),
                                                          actions: [
                                                            MaterialButton(
                                                                onPressed: () {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return Home();
                                                                      });
                                                                },
                                                                child:
                                                                    Text("NO")),
                                                            MaterialButton(
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                    "YES")),
                                                          ],
                                                          backgroundColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  255,
                                                                  122,
                                                                  122),
                                                        );
                                                        ;
                                                      });
                                                },
                                                color: Color.fromARGB(
                                                    255, 156, 46, 66),
                                                child: Text('Reject',
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 35, 38, 40),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      letterSpacing: 2.0,
                                                      fontSize: 25,
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: 170,
                                              child: RaisedButton(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                "Forward form"),
                                                            content: Text(
                                                                "Are you sure ?"),
                                                            actions: [
                                                              MaterialButton(
                                                                  onPressed:
                                                                      () {
                                                                    showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return Home();
                                                                        });
                                                                  },
                                                                  child: Text(
                                                                      "NO")),
                                                              MaterialButton(
                                                                  onPressed:
                                                                      () {},
                                                                  child: Text(
                                                                      "YES")),
                                                            ],
                                                            backgroundColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    135,
                                                                    186,
                                                                    241),
                                                          );
                                                          ;
                                                        });
                                                  },
                                                  color: Color.fromARGB(
                                                      255, 5, 112, 166),
                                                  child: Text('Forward',
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 35, 38, 40),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 2.0,
                                                        fontSize: 25,
                                                      ))),
                                            )
                                          ],
                                        ),
                                      ],
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
                SizedBox(height: 94),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Approve form"),
                                content: Text("Are you sure ?"),
                                actions: [
                                  MaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Home();
                                            });
                                      },
                                      child: Text("NO")),
                                  MaterialButton(
                                      onPressed: () {}, child: Text("YES")),
                                ],
                                backgroundColor:
                                    Color.fromARGB(255, 173, 234, 132),
                              );
                              ;
                            });
                      },
                      color: Color.fromARGB(255, 54, 156, 109),
                      child: Text('Approve'),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Reject form"),
                                content: Text("Are you sure ?"),
                                actions: [
                                  MaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Home();
                                            });
                                      },
                                      child: Text("NO")),
                                  MaterialButton(
                                      onPressed: () {}, child: Text("YES")),
                                ],
                                backgroundColor:
                                    Color.fromARGB(255, 255, 122, 122),
                              );
                              ;
                            });
                      },
                      color: Color.fromARGB(255, 156, 46, 66),
                      child: Text('Reject'),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Forward form"),
                                  content: Text("Are you sure ?"),
                                  actions: [
                                    MaterialButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Home();
                                              });
                                        },
                                        child: Text("NO")),
                                    MaterialButton(
                                        onPressed: () {}, child: Text("YES")),
                                  ],
                                  backgroundColor:
                                      Color.fromARGB(255, 135, 186, 241),
                                );
                                ;
                              });
                        },
                        color: Color.fromARGB(255, 5, 112, 166),
                        child: Text('Forward'))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
