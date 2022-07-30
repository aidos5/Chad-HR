import 'package:flutter/material.dart';
import 'package:sampleproject/sidebar.dart';
import 'main_page_tile.dart';

class MainPage extends StatelessWidget {
  final int itemNo;

  const MainPage(
    this.itemNo,
  );

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
          sidebar(),
          SizedBox(height: 2),
          Container(
              width: screenwidth / 1.1,
              child: GridView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => MainPageTile(index),
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
