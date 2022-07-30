import 'sidebar.dart';
import 'package:flutter/material.dart';

class announcement_issue extends StatefulWidget {
  announcement_issue({Key? key}) : super(key: key);

  @override
  State<announcement_issue> createState() => _announcement_issueState();
}

class _announcement_issueState extends State<announcement_issue> {
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
        ],
      ),
    );
  }
}
