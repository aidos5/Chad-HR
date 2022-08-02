// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sampleproject/SecureStorage.dart';
import 'package:sampleproject/model/Announcement.dart';
import 'dart:math';
import 'announcement_box.dart';
//import 'rolessave.dart';
import 'main.dart';
import 'model/UserCredentials.dart';
import 'sidebar.dart';

class announcement extends StatefulWidget {
  announcement({Key? key}) : super(key: key);

  @override
  State<announcement> createState() => _announcementState();
}

class _announcementState extends State<announcement> {
  final storage = SecureStorage(FlutterSecureStorage());

  List<Announcement>? announcements = [];
  List<String>? announcements_string = [];
  UserCredentials? currentuser;
  @override
  void initState() {
    DoStuff();
    // TODO: implement initState
    super.initState();
  }

  Future DoStuff() async {
    await CurrentUser();
    await GetAnnouncements();
  }

  Future GetAnnouncements() async {
    setState(() {
      announcements_string = [];
      announcements = [];
    });

    String? annStr = await storage.read(key: 'announcements');
    announcements_string =
        (jsonDecode(annStr!) as List<dynamic>).cast<String>();

    for (String s in announcements_string!) {
      Map<String, dynamic> data = jsonDecode(s);

      setState(() {
        announcements!.add(Announcement.fromJson(data));
      });
    }
  }

  Future CurrentUser() async {
    String? usercreds = await storage.read(key: 'currentUser');

    currentuser = UserCredentials.fromJson(jsonDecode(usercreds ?? ""));
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 243, 229, 202),
      appBar: AppBar(
        title: Text(
          'CHAD HR',
          style: TextStyle(
            fontFamily: 'ArchitectsDaughter-Regular',
            fontSize: 23.0,

            //fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 7, 68, 133),
        centerTitle: true,
      ),
      body: Row(
        children: [
          SideBar(),
          SizedBox(
            height: 1.1,
          ),
          Container(
            width: screenwidth / 1.1,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    // IconButton(
                    //   icon: const Icon(Icons.arrow_back),
                    //   onPressed: () {
                    //     showDialog(
                    //         context: context,
                    //         builder: (context) {
                    //           return MyApp();
                    //         });
                    //   },
                    // ),
                    SizedBox(
                      width: screenwidth / 2.4,
                    ),
                    Text(
                      'ANNOUNCEMENTS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(185, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: announcements!.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          //Text('ANNOUNCEMENTS'),
                          Boxer(announcements![index].title,
                              announcements![index].description),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          if (currentuser?.userRole == 'HR' || currentuser?.userRole! == 'Boss')
            FloatingActionButton(
              onPressed: () {
                announcement_dialog(context, this);
              },
              child: Icon(Icons.add),
            ),
        ],
      ),
    );
  }

  announcement_dialog(BuildContext context, _announcementState state) {
    TextEditingController titleCont = new TextEditingController();
    TextEditingController descriptionCont = new TextEditingController();

    showDialog(
        context: context,
        builder: (context) => StatefulBuilder(builder: (context, setState) {
              return Dialog(
                child: Container(
                  width: 1000,
                  height: 700,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ), // BoxDecoration
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                controller: titleCont,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Announcement Title',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ), // BoxDecoration
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 20,
                                controller: descriptionCont,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Subject',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () async {
                          // Save it into a json
                          Announcement an = Announcement();
                          an.title = titleCont.text;
                          an.description = descriptionCont.text;

                          announcements_string!.add(jsonEncode(an.toJson()));

                          await storage.write(
                              key: 'announcements',
                              value: jsonEncode(announcements_string));

                          await state.DoStuff();

                          Navigator.pop(context);
                        },
                        child: Text('Submit',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
