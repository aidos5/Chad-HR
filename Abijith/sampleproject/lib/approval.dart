// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'approval_main.dart';
import 'main.dart';

class approval extends StatefulWidget {
  final int? num;
  final String sub;
  approval({required this.num, required this.sub}) {}

  @override
  State<approval> createState() => _approvalState();
}

class _approvalState extends State<approval> {
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
                    'Employee_${widget.num! + 1}',
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
                                              'Employee_${widget.num! + 1}',
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
                                                        return approval_m();
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
                                                                        return approval_m();
                                                                      });
                                                                },
                                                                child:
                                                                    Text("NO")),
                                                            MaterialButton(
                                                                onPressed: () {
                                                                  showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return AlertDialog(
                                                                          //title: Text("APPROVE FORM"),
                                                                          title: Text(
                                                                              "THE FORM HAS BEEN APPROVED",
                                                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                                                                          content:
                                                                              Text(''),
                                                                          actions: [
                                                                            MaterialButton(
                                                                                onPressed: () {
                                                                                  showDialog(
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return approval_m();
                                                                                      });
                                                                                },
                                                                                child: Text("Okay")),
                                                                          ],
                                                                          backgroundColor: Color.fromARGB(
                                                                              255,
                                                                              171,
                                                                              240,
                                                                              125),
                                                                        );
                                                                        ;
                                                                      });
                                                                },
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
                                                                  Navigator.of(context).pushAndRemoveUntil(
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              approval_m()),
                                                                      (route) =>
                                                                          false);
                                                                },
                                                                child:
                                                                    Text("NO")),
                                                            MaterialButton(
                                                                onPressed: () {
                                                                  reject_dialog(
                                                                      context);
                                                                },
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
                                                                    Navigator.of(context).pushAndRemoveUntil(
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                approval_m()),
                                                                        (route) =>
                                                                            false);
                                                                  },
                                                                  child: Text(
                                                                      "NO")),
                                                              MaterialButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(context).pushAndRemoveUntil(
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                approval_m()),
                                                                        (route) =>
                                                                            false);
                                                                  },
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
                                              return approval_m();
                                            });
                                      },
                                      child: Text("NO")),
                                  MaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                //title: Text("APPROVE FORM"),
                                                title: Text(
                                                    "THE FORM HAS BEEN APPROVED",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                content: Text(''),
                                                actions: [
                                                  MaterialButton(
                                                      onPressed: () {
                                                        showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return approval_m();
                                                            });
                                                      },
                                                      child: Text("Okay")),
                                                ],
                                                backgroundColor: Color.fromARGB(
                                                    255, 171, 240, 125),
                                              );
                                              ;
                                            });
                                      },
                                      child: Text("YES")),
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
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        approval_m()),
                                                (route) => false);
                                        ;
                                      },
                                      child: Text("NO")),
                                  MaterialButton(
                                      onPressed: () {
                                        reject_dialog(context);
                                      },
                                      child: Text("YES")),
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
                                                return approval_m();
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

reject_dialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        double screenwidth = MediaQuery.of(context).size.width;
        return StatefulBuilder(builder: (context, setState) {
          return Dialog(
              child: Container(
                  width: 1000,
                  height: 700,
                  color: Color.fromARGB(255, 237, 171, 171),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return approval_m();
                                  });
                            },
                          ),
                          SizedBox(
                            width: screenwidth / 4,
                          ),
                          Text('REASON FOR REJECTION OF THE FORM',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                  color: Color.fromARGB(255, 14, 10, 10)),
                              borderRadius: BorderRadius.circular(10),
                            ), // BoxDecoration
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'ENTER THE REASON',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RaisedButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 230, 111, 102),
                            child: Text('SUBMIT'),
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ],
                  )));
        });
      });
}

approve_dialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Container();
      });
}
