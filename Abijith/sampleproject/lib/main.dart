import 'package:flutter/material.dart';
import 'package:sampleproject/main_page.dart';
import 'navigation_model.dart';
import 'collapsing_list_tile.dart';
import 'item_tile.dart';
import 'employee_perks.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Chad HR';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.blue[600],
            width: (screenwidth / 25) + 4,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      color: Colors.blue[600]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.campaign,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      color: Colors.blue[600]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      color: Colors.blue[600]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      color: Colors.blue[600]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.discount,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Container(
              width: screenwidth / 1.1,
              child: GridView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => ItemTile(index),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 20,
                ),
              )),
        ],
      ),
    );
  }
}
