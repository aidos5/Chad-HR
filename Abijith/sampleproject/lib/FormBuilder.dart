// ignore_for_file: prefer_final_fields

import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_dynamic_form/utils/DynamicFormConstants.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'model/FormDetails.dart';
import 'model/ProcessStep.dart';

import 'package:simple_json_form/simple_json_form.dart';

class FormBuilder extends StatefulWidget {
  FormBuilder({Key? key}) : super(key: key);

  @override
  State<FormBuilder> createState() => _FormBuilderState();
}

class Animal {
  int? id;
  String? name;

  Animal({
    this.id,
    this.name,
  });
}

class _FormBuilderState extends State<FormBuilder> {
  List<String> formDetails_string = [];
  final storage = new FlutterSecureStorage();

  int _cardCount = 0;

  List<ProcessStep> processSteps = [];
  String formName = "";
  String formJSON = "";

  static List<Animal> _animals = [
    Animal(id: 1, name: "Lion"),
    Animal(id: 2, name: "Flamingo"),
    Animal(id: 3, name: "Hippo"),
    Animal(id: 4, name: "Horse"),
    Animal(id: 5, name: "Tiger"),
    Animal(id: 6, name: "Penguin"),
    Animal(id: 7, name: "Spider"),
    Animal(id: 8, name: "Snake"),
    Animal(id: 9, name: "Bear"),
    Animal(id: 10, name: "Beaver"),
    Animal(id: 11, name: "Cat"),
    Animal(id: 12, name: "Fish"),
    Animal(id: 13, name: "Rabbit"),
    Animal(id: 14, name: "Mouse"),
    Animal(id: 15, name: "Dog"),
    Animal(id: 16, name: "Zebra"),
    Animal(id: 17, name: "Cow"),
    Animal(id: 18, name: "Frog"),
    Animal(id: 19, name: "Blue Jay"),
    Animal(id: 20, name: "Moose"),
    Animal(id: 21, name: "Gecko"),
    Animal(id: 22, name: "Kangaroo"),
    Animal(id: 23, name: "Shark"),
    Animal(id: 24, name: "Crocodile"),
    Animal(id: 25, name: "Owl"),
    Animal(id: 26, name: "Dragonfly"),
    Animal(id: 27, name: "Dolphin"),
  ];
  final _items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name ?? ""))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<Animal> _selectedAnimals = [];
  List<Animal> _selectedAnimals3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<Animal> _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _cardCount = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Builder"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                // testAlert();
                showDialog(
                    context: context,
                    builder: (context) =>
                        StatefulBuilder(builder: (context, setState) {
                          return Dialog(
                            child: DefaultTabController(
                              length: 3,
                              child: Scaffold(
                                appBar: AppBar(
                                  title: Text("Form Creator"),
                                  bottom: TabBar(tabs: [
                                    Tab(
                                      text: "Edit Form",
                                    ),
                                    Tab(
                                      text: "Define Flow",
                                    ),
                                    Tab(
                                      text: "Publish",
                                    )
                                  ]),
                                ),
                                body: TabBarView(children: [
                                  // It's Edit form view
                                  SingleChildScrollView(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.all(25),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ), // BoxDecoration
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0),
                                                  child: TextField(
                                                    onChanged: ((value) =>
                                                        setState(
                                                          () {
                                                            formName = value
                                                                .toString();

                                                            //print(formName);
                                                          },
                                                        )),
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Form Name...',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.all(25),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ), // BoxDecoration
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0),
                                                  child: TextField(
                                                    onChanged: (value) =>
                                                        setState((() {
                                                      formJSON = value;
                                                      //print(formJSON);
                                                    })),
                                                    maxLines: 20,
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Form JSON...',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Workflow Stuff
                                  SingleChildScrollView(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          // Form Created card
                                          Container(
                                            height: 100,
                                            width: 200,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              elevation: 20,
                                              child: Center(
                                                  child: Text("Form Created!")),
                                            ),
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          // List of tasks
                                          SizedBox(
                                            height: null,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: _cardCount,
                                                itemBuilder: (context, index) {
                                                  return UnconstrainedBox(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: Container(
                                                        height: 200,
                                                        width: 400,
                                                        child: Card(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                          elevation: 20,
                                                          child: Center(
                                                              child:
                                                                  SingleChildScrollView(
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  child: Row(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text("Process Step"),
                                                                          ),
                                                                        ),
                                                                        IconButton(
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {
                                                                                _cardCount--;
                                                                                processSteps.removeAt(index);
                                                                              });
                                                                            },
                                                                            icon:
                                                                                Icon(Icons.close))
                                                                      ]),
                                                                ),

                                                                SizedBox(
                                                                  height: 10,
                                                                ),

                                                                // Step Dropdown
                                                                Container(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal:
                                                                              20),
                                                                  child:
                                                                      DropdownButton(
                                                                          value: processSteps[index]
                                                                              .stepType,
                                                                          items: <
                                                                              String>[
                                                                            'Input Step',
                                                                            'Approval Step'
                                                                          ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(8.0),
                                                                                child: Text(value),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(() {
                                                                              processSteps[index].stepType = val.toString();
                                                                            });
                                                                          }),
                                                                ),

                                                                SizedBox(
                                                                  height: 10,
                                                                ),

                                                                // Getting usernames
                                                                MultiSelectDialogField<
                                                                    Animal>(
                                                                  searchable:
                                                                      true,
                                                                  title: Text(
                                                                      "Who can do this?"),
                                                                  buttonText: Text(
                                                                      "Who can do this?"),
                                                                  items: _animals
                                                                      .map((e) =>
                                                                          MultiSelectItem(
                                                                              e,
                                                                              e.name ?? "Lowde"))
                                                                      .toList(),
                                                                  listType:
                                                                      MultiSelectListType
                                                                          .LIST,
                                                                  onConfirm:
                                                                      (values) {
                                                                    _selectedAnimals =
                                                                        values;

                                                                    processSteps[index].stepPerformers = values
                                                                        .map((e) =>
                                                                            e.name)
                                                                        .toList();
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          )),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          // Add task button
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _cardCount++;

                                                  ProcessStep p =
                                                      new ProcessStep();

                                                  p.stepType = 'Input Step';
                                                  processSteps.add(p);
                                                });
                                              },
                                              icon: Icon(Icons.add)),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Container(
                                            height: 100,
                                            width: 200,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              elevation: 20,
                                              child: Center(
                                                  child:
                                                      Text("Form Complete!")),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Can add anything if necessary"),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                String? s = await storage.read(
                                                    key: 'forms');

                                                //print(s);

                                                // Everything Done! Publish the form here
                                                FormDetails _formDetails =
                                                    new FormDetails();
                                                _formDetails.formName =
                                                    formName;
                                                _formDetails.formJSON =
                                                    formJSON;
                                                _formDetails.processSteps =
                                                    processSteps;

                                                formDetails_string.add(
                                                    json.encode(
                                                        _formDetails.toJson()));

                                                // Save the process
                                                await storage.write(
                                                    key: 'forms',
                                                    value: json.encode(
                                                        formDetails_string));

                                                s = await storage.read(
                                                    key: 'forms');

                                                //print(s);

                                                // Make it possible to display form in other menus
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Text("Publish Form"),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          );
                        }));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Open Form Editor"),
              )),

          // Do something with forms
          TextButton(
              onPressed: () async {
                //Populate form builder texts list
                String? jsonString = await storage.read(key: 'forms');
                formDetails_string =
                    (jsonDecode(jsonString ?? "") as List<dynamic>)
                        .cast<String>();

                for (String s in formDetails_string) {
                  //print(s);
                }
                // Show forms dialog
                showDialog(
                    context: context,
                    builder: (context) => StatefulBuilder(
                        builder: (context, setState) => Dialog(
                              child: Scaffold(
                                appBar: AppBar(
                                  title: Text("Created Forms"),
                                ),
                                body: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: GridView.builder(
                                            shrinkWrap: true,
                                            itemCount:
                                                formDetails_string.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 4,
                                                    mainAxisSpacing: 5,
                                                    crossAxisSpacing: 5),
                                            itemBuilder: (context, index) {
                                              Map<String, dynamic> data =
                                                  jsonDecode(formDetails_string[
                                                      index]);

                                              FormDetails details =
                                                  FormDetails.fromJson(data);

                                              //print(data);

                                              return UnconstrainedBox(
                                                child: Container(
                                                  height: 250,
                                                  width: 250,
                                                  child: Card(
                                                    child: Column(children: [
                                                      Expanded(
                                                          child: Center(
                                                        child: TextButton(
                                                          onPressed: (() {
                                                            // Show Form dialog
                                                            OpenForm(details);
                                                          }),
                                                          child: Text(details
                                                                  .formName ??
                                                              "Lowde"),
                                                        ),
                                                      ))
                                                    ]),
                                                  ),
                                                ),
                                              );
                                            }))
                                  ],
                                ),
                              ),
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Open Forms"),
              )),

          TextButton(
              onPressed: () async {
                setState(() async {
                  await storage.deleteAll();
                  String? jsonString = await storage.read(key: 'forms');
                  formDetails_string = [];
                  _cardCount = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Delete Data!"),
              ))
        ],
      )),
    );
  }

  OpenForm(FormDetails formDetails) {
    showDialog(
        context: context,
        builder: (context) => StatefulBuilder(builder: (context, setState) {
              return Dialog(
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(formDetails.formName ?? "No Name"),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        SimpleJsonForm(
                          jsonSchema: sampleData2,
                          title: formDetails.formName,
                          titleStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          description: "Fill the form carefully!",
                          crossAxisAlignment: CrossAxisAlignment.center,
                          index: 0,
                          imageUrl: '',
                          defaultValues: DefaultValues().copyWith(
                            nextButtonText: 'Next',
                            // hintDropdownText: 'Elija una opcion',
                            previousButtonText: 'Previous',
                            submitButtonText: 'Submit',
                            // validationDescription: 'Algunos campos requeridos faltan',
                            validationTitle: 'Wrong Wrong Wrong...',
                            fieldRequired: 'Give some value',
                          ),
                          descriptionStyleText: const TextStyle(
                            color: Colors.lightBlue,
                          ),
                          titleStyleText: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                          onSubmit: (val) {
                            if (val == null) {
                              //print("no data");
                            } else {
                              var json = jsonEncode(val.toJson());
                              //print(json);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }

  final sampleData = JsonSchema.fromJson({
    "form": [
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier",
            "fields": ["1", "2", "3", "4", "5"],
            "title": "This is my title",
            "description": "This is my description",
            "type": "multiple",
          }
        ]
      },
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier_boat",
            "fields": ["1", "2", "3", "4", "5"],
            "title": "This is my title",
            "description": "This is my description",
            "type": "format1",
            "raw": [
              {
                "title": "Menu 1",
                "description": "description 1",
                "properties": [
                  {
                    "key": "key_date",
                    "title": "date",
                    "type": "date",
                  },
                ]
              },
              {
                "title": "Menu 2",
                "properties": [
                  {
                    "key": "key_trips",
                    "title": "Trips",
                    "type": "text",
                  },
                ]
              },
            ]
          }
        ]
      },
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier",
            "fields": ["1", "2", "3", "4", "5"],
            "title": "This is my title",
            "description": "This is my description",
            "type": "checkbox"
          }
        ]
      },
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier",
            "title": "This is my title",
            "description": "This is my description",
            "type": "text",
            "is_mandatory": false,
            "readOnly": true,
            "validations": {
              "message": "This is my message",
              "length": {"min": 10, "max": 20},
            }
          }
        ]
      },
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier",
            "title": "This is my title",
            "description": "This is my description",
            "type": "date",
            "is_mandatory": false,
          }
        ]
      },
      {
        "key": "informations",
        "properties": [
          {
            "key": "identifier_boat",
            "title": "This is my title",
            "description": "This is my description",
            "type": "time",
            "is_mandatory": false,
          }
        ]
      }
    ]
  });
}

final sampleData2 = JsonSchema.fromJson({
  "form": [
    {
      "key": "informations",
      "properties": [
        {
          "key": "date",
          "title": "Fecha",
          "type": "date",
        },
        {
          "key": "bp",
          "title": "BP",
          "type": "text",
        },
      ]
    },
    {
      "key": "table",
      "properties": [
        {
          "key": "table_dynamic",
          "title": "Listado",
          "type": "format1",
          "raw": [
            {
              "title": "Menu 1",
              "description": "Llenado de cubas",
              "properties": [
                {
                  "key": "key_text2",
                  "title": "Title text",
                  "type": "text",
                },
              ]
            },
            {
              "title": "Menu 2",
              "properties": [
                {
                  "key": "date2",
                  "title": "Date of title",
                  "type": "text",
                },
              ]
            },
          ]
        },
      ]
    },
  ]
});
