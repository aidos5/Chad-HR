import 'package:flutter/material.dart';
import 'package:sampleproject/sidebar.dart';
import 'profile.dart';
import 'employee_managment.dart';

class pro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
      body:
          //SizedBox(height: 5),

          // Expanded(
          //   child: GridView.builder(
          //       itemCount: 8,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 4, childAspectRatio: 0.8),
          //       itemBuilder: ((context, index) => reject(
          //           subject: subject[index],
          //           reason: reason[index],
          //           num: index))),
          // ),

          // Expanded(
          //   child: GridView.builder(
          //     itemCount: 8,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 4, childAspectRatio: 0.8),
          //     itemBuilder: ((context, index) =>
          //         approval(num: index, sub: subject[index])),
          //   ),)

          //Media(),

          // Container(
          //   width: width / 3,
          //   height: height / 3,
          //   color: Colors.purple[100],
          //   child: Text('DATE'),
          // ),

          // Container(
          //   width: width / 3,
          //   height: height / 3,
          //   color: Color.fromARGB(255, 198, 237, 121),
          //   child: Text('Upload'),
          // )

          //withdrawn(),
          Row(
        children: [
          sidebar(),
          SizedBox(height: height - 58, width: 30),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 0),
              Text(
                'USER PROFILE',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(185, 0, 0, 0),
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 30),
              profile(),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
