import 'package:flutter/material.dart';
import 'package:flutter_application_1/employee.dart';
import 'package:flutter/widgets.dart';

class Media extends StatelessWidget {
  const Media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          'HEIGHT : ' + MediaQuery.of(context).size.height.toStringAsFixed(2),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text('WIDTH : ' + MediaQuery.of(context).size.width.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 20,
            )),
        Text(
            'aspect ratio : ' +
                MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 20,
            )),
        Text('data'),
      ],
    ));
  }
}
