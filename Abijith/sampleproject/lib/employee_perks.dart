import 'package:flutter/material.dart';

import 'employee_tile.dart';
import 'package:sampleproject/employee_tile.dart';

class EmployeePerks extends StatelessWidget {
  const EmployeePerks();

  @override
  Widget build(BuildContext context) {
    final String title = 'Chad HR';
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        automaticallyImplyLeading: true,
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
                itemBuilder: (context, index) => EmployeeTiles(index),
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
