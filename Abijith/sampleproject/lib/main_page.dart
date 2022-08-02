import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sampleproject/sidebar.dart';
import 'main_page_tile.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  int? itemNo;
  MainPage.withItemNo(this.itemNo);

  @override
  State<MainPage> createState() => _MainPageState(itemNo!);
}

class _MainPageState extends State<MainPage> {
  final int itemNo;

  _MainPageState(this.itemNo);

  final storage = FlutterSecureStorage();

  // MainPage(
  //   this.itemNo,
  // );

  @override
  Widget build(BuildContext context) {
    final String title = 'Chad HR';
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () async {
                await storage.deleteAll();
              },
              icon: Icon(Icons.directions_transit_filled))
        ],
      ),
      body: Row(
        children: [
          SideBar(),
          SizedBox(height: 2),
          Container(
              width: screenwidth / 1.1,
              child: GridView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => MainPageTile(),
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
