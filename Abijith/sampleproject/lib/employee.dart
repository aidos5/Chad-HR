import 'package:flutter/material.dart';

class Empl extends StatefulWidget {
  Empl({Key? key}) : super(key: key);

  String? name;
  Empl.withName({this.name});

  @override
  State<Empl> createState() => _EmplState(name: name);
}

class _EmplState extends State<Empl> {
  String? name;
  // final int id;
  String? hasBadge;

  _EmplState({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 170, 206, 235),
            border: Border.all(color: Colors.black)),
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'NAME : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    name ?? "Lowde",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Has Badge : ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 64, 69)),
                  ),
                  Text(
                    hasBadge ?? "Loading...",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132)),
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        // setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Give Badge"),
                      ))
                ],
              ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'DESIGNATION : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       'Employee',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     )
              //   ],
              // ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'DATE OF BIRTH : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       'DD/MM/YYYY',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'BRANCH : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       'BANGALORE',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'DATE OF JOINING : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       'DD/MM/YYYY',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     )
              //   ],
              // ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'CONTACT NO. : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       '+91 XXXXXXX${839 + id}',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     )
              //   ],
              // ),
              // SizedBox(height: 5),
              // Row(
              //   children: [
              //     Text(
              //       'ADDRESS : ',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 55, 64, 69)),
              //     ),
              //     Text(
              //       '-----------',
              //       style: TextStyle(
              //           fontSize: 18.0,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 20, 96, 132)),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        height: 15,
      ),
    );
  }
}
