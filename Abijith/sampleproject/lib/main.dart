import 'package:flutter/material.dart';
import 'package:sampleproject/main_page_tile.dart';
import 'package:sampleproject/sign_in.dart';
import 'sidebar.dart';
import 'profile.dart';
import 'employee_perks.dart';
import 'form.dart';
import 'userprofile.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  static const appTitle = 'Chad HR';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Home(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(),
          Container(
              width: screenwidth / 1.1,
              child: GridView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => MainPageTile(index),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 5,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 20,
                ),
              )),
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
