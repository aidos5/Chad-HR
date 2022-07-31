// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:sampleproject/main.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int user = 0;

  var random = Random();

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(249, 243, 229, 202),
        appBar: AppBar(
          title: Text(
            'CHAD HR',
            style: TextStyle(
              fontFamily: 'ArchitectsDaughter-Regular',
              fontSize: 23.0,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 7, 68, 133),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Container(
                      child: Text('Sign in',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 91, 161),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2.0,
                            fontSize: 28,
                          ))),
                ),
                SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                    title: 'Chad HR',
                                  )),
                          (route) => false);
                    },
                    child: Text('Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 91, 161),
                          fontWeight: FontWeight.w600,
                          fontSize: 23,
                        )),
                    //color: Color.fromARGB(255, 255, 165, 0),
                  ),
                ),
                Divider(height: 50),
                //SizedBox(height: 20),
                FlatButton(
                    onPressed: () {},
                    child: Text('forgot password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 91, 161),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ))),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have a account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 62, 71, 78),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Sign up',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 91, 161),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )),
                    )
                  ],
                ),
              ],
            )));
  }
}
