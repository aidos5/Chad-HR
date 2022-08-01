import 'package:flutter/material.dart';
import 'package:sampleproject/model/GiveBadgeContract.dart';

class Empl extends StatefulWidget {
  Empl({Key? key}) : super(key: key);

  String? name;
  GiveBadgeContract? giveBadgeContract;
  Empl.withName({this.name, this.giveBadgeContract});

  @override
  State<Empl> createState() => _EmplState(name: name, giveBadgeContract: giveBadgeContract);
}

class _EmplState extends State<Empl> {
  String? name;
  // final int id;
  String? hasBadge;

  GiveBadgeContract? giveBadgeContract;

  _EmplState({this.name, this.giveBadgeContract});

  @override
  void initState() {
    // TODO: implement initState
    GetBadgeDetails();
    super.initState();
  }

  void GetBadgeDetails() async {
    var badges = await giveBadgeContract!.GetBadges();

    if (badges.toString().contains(name!)) {
      setState(() {
        hasBadge = "Yeah! Badge Name : Giga Chad";
      });
    }
  }

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
              Column(
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
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 20, 96, 132),
                        ),
                  )
                ],
              ),
              SizedBox(height: 5),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () async {
                          await giveBadgeContract!
                              .GiveBadge("giga_chad", name!);
                          setState(() {
                            hasBadge = "Yeah! Badge Name : Giga Chad";
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Give Badge",
                          style: TextStyle(overflow: TextOverflow.ellipsis),),
                        ))
                  ],
                ),
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
