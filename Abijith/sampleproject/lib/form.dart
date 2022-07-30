import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sampleproject/sidebar.dart';

import 'form_tile.dart';
import 'FormBuilder.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'model/FormDetails.dart';
import 'model/ProcessStep.dart';
import 'package:simple_json_form/simple_json_form.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'dart:convert';

class Animal {
  int? id;
  String? name;

  Animal({
    this.id,
    this.name,
  });
}

class Forms extends StatefulWidget {
  Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  // init

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
    InitFormDetails();
    // TODO: implement initState
    super.initState();
  }

  void InitFormDetails() async {
    //Populate form builder texts list
    String? jsonString = await storage.read(key: 'forms');
    setState(() {
      formDetails_string =
          (jsonDecode(jsonString ?? "") as List<dynamic>).cast<String>();
    });
  }

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
          SideBar(),
          SizedBox(height: 2),
          Container(
              width: screenwidth / 1.1,
              child: GridView.builder(
                itemCount: formDetails_string.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> data =
                      jsonDecode(formDetails_string[index]);

                  FormDetails details = FormDetails.fromJson(data);
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    width: 75,
                    margin: const EdgeInsets.fromLTRB(35, 20, 20, 10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                                child: Text(details.formName ?? "Lowda")),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MaterialButton(
                                color: Colors.red,
                                onPressed: () {
                                  OpenFormEditor(context, index);
                                },
                                child: const Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MaterialButton(
                                color: Colors.red,
                                onPressed: () {},
                                child: const Text(
                                  'Create',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 20,
                ),
              )),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: FloatingActionButton(
                  onPressed: () {
                    // Open FOrm dialog
                    OpenFormCreator(context);
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  OpenFormCreator(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => StatefulBuilder(builder: (context, setState) {
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
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(12),
                                    ), // BoxDecoration
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: TextField(
                                        onChanged: ((value) => setState(
                                              () {
                                                formName = value.toString();

                                                print(formName);
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
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(12),
                                    ), // BoxDecoration
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: TextField(
                                        onChanged: (value) => setState((() {
                                          formJSON = value;
                                          print(formJSON);
                                        })),
                                        maxLines: 20,
                                        keyboardType: TextInputType.multiline,
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
                                      borderRadius: BorderRadius.circular(4)),
                                  elevation: 20,
                                  child: Center(child: Text("Form Created!")),
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
                                          padding: const EdgeInsets.all(20),
                                          child: Container(
                                            height: 200,
                                            width: 400,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              elevation: 20,
                                              child: Center(
                                                  child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Row(children: [
                                                        Expanded(
                                                          child: Center(
                                                            child: Text(
                                                                "Process Step"),
                                                          ),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                _cardCount--;
                                                                processSteps
                                                                    .removeAt(
                                                                        index);
                                                              });
                                                            },
                                                            icon: Icon(
                                                                Icons.close))
                                                      ]),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    // Step Dropdown
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20),
                                                      child: DropdownButton(
                                                          value: processSteps[
                                                                  index]
                                                              .stepType,
                                                          items: <String>[
                                                            'Input Step',
                                                            'Approval Step'
                                                          ].map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: value,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child:
                                                                    Text(value),
                                                              ),
                                                            );
                                                          }).toList(),
                                                          onChanged: (val) {
                                                            setState(() {
                                                              processSteps[
                                                                          index]
                                                                      .stepType =
                                                                  val.toString();
                                                            });
                                                          }),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    // Getting usernames
                                                    MultiSelectDialogField<
                                                        Animal>(
                                                      searchable: true,
                                                      title: Text(
                                                          "Who can do this?"),
                                                      buttonText: Text(
                                                          "Who can do this?"),
                                                      items: _animals
                                                          .map((e) =>
                                                              MultiSelectItem(
                                                                  e,
                                                                  e.name ??
                                                                      "Lowde"))
                                                          .toList(),
                                                      listType:
                                                          MultiSelectListType
                                                              .LIST,
                                                      onConfirm: (values) {
                                                        _selectedAnimals =
                                                            values;

                                                        processSteps[index]
                                                                .stepPerformers =
                                                            values
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

                                      ProcessStep p = new ProcessStep();

                                      p.stepType = 'Input Step';
                                      p.stepCompleted = false;
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
                                      borderRadius: BorderRadius.circular(4)),
                                  elevation: 20,
                                  child: Center(child: Text("Form Complete!")),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Can add anything if necessary"),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () async {
                                    String? s =
                                        await storage.read(key: 'forms');

                                    print(s);

                                    // Everything Done! Publish the form here
                                    FormDetails _formDetails =
                                        new FormDetails();
                                    _formDetails.formName = formName;
                                    _formDetails.formJSON = formJSON;
                                    _formDetails.processSteps = processSteps;

                                    formDetails_string.add(
                                        json.encode(_formDetails.toJson()));

                                    // Save the process
                                    await storage.write(
                                        key: 'forms',
                                        value: json.encode(formDetails_string));

                                    s = await storage.read(key: 'forms');

                                    print(s);

                                    // Make it possible to display form in other menus
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
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
  }

  OpenFormEditor(BuildContext buildContext, int formIndex) {

    Map<String, dynamic> data =
        jsonDecode(formDetails_string[formIndex]);

    FormDetails details = FormDetails.fromJson(data);
    // Get all values here then fill it in text boxes
    TextEditingController formNameCont = new TextEditingController();
    formNameCont.text = details.formName ?? "Lowde";

    TextEditingController formJsonCont = new TextEditingController();
    formJsonCont.text = details.formJSON ?? "Lowde";

    List<ProcessStep> processSteps =
        details.processSteps ?? List.empty();

    int processCount = processSteps.length;

    Map<int, List<Animal>> selectedAnimals = {};
    for (int i = 0; i < processSteps.length; i++) {
      List<Animal> ani = [];
      for (int j = 0;
          j < (processSteps[i].stepPerformers??List.empty()).length;
          j++) {
        Animal? reqAnimal = _animals
            .where((element) =>
                element.name == processSteps[i].stepPerformers![j])
            .first;

        if (reqAnimal != null) {
          ani.add(reqAnimal);
        }
      }

      selectedAnimals.addAll({i: ani});
    }

    showDialog(
        context: context,
        builder: (context) => StatefulBuilder(builder: (context, setState) {
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
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(12),
                                    ), // BoxDecoration
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: TextField(
                                        controller: formNameCont,
                                        // onChanged: ((value) => setState(
                                        //       () {
                                        //         formNameCont.text = value;

                                        //         print(formNameCont.text);
                                        //       },
                                        //     )),
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
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(12),
                                    ), // BoxDecoration
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: TextField(
                                        controller: formJsonCont,
                                        // onChanged: (value) => setState((() {
                                        //   formJsonCont.text = value;
                                        //   print(formJsonCont.text);
                                        // })),
                                        maxLines: 20,
                                        keyboardType: TextInputType.multiline,
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
                                      borderRadius: BorderRadius.circular(4)),
                                  elevation: 20,
                                  child: Center(child: Text("Form Created!")),
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
                                    itemCount: processCount,
                                    itemBuilder: (context, index) {
                                      return UnconstrainedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Container(
                                            height: 200,
                                            width: 400,
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              elevation: 20,
                                              child: Center(
                                                  child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Row(children: [
                                                        Expanded(
                                                          child: Center(
                                                            child: Text(
                                                                "Process Step"),
                                                          ),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                processCount--;
                                                                processSteps
                                                                    .removeAt(
                                                                        index);
                                                              });
                                                            },
                                                            icon: Icon(
                                                                Icons.close))
                                                      ]),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    // Step Dropdown
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20),
                                                      child: DropdownButton(
                                                          value: processSteps[
                                                                  index]
                                                              .stepType,
                                                          items: <String>[
                                                            'Input Step',
                                                            'Approval Step'
                                                          ].map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: value,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child:
                                                                    Text(value),
                                                              ),
                                                            );
                                                          }).toList(),
                                                          onChanged: (val) {
                                                            setState(() {
                                                              processSteps[
                                                                          index]
                                                                      .stepType =
                                                                  val.toString();
                                                            });
                                                          }),
                                                    ),

                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    // Getting usernames
                                                    MultiSelectDialogField<
                                                        Animal>(
                                                      initialValue:
                                                          selectedAnimals[
                                                              index],
                                                      searchable: true,
                                                      title: Text(
                                                          "Who can do this?"),
                                                      buttonText: Text(
                                                          "Who can do this?"),
                                                      items: _animals
                                                          .map((e) =>
                                                              MultiSelectItem(
                                                                  e,
                                                                  e.name ??
                                                                      "Lowde"))
                                                          .toList(),
                                                      listType:
                                                          MultiSelectListType
                                                              .LIST,
                                                      onConfirm: (values) {
                                                        _selectedAnimals =
                                                            values;

                                                        processSteps[index]
                                                                .stepPerformers =
                                                            values
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
                                      processCount++;
                                      print("yoyo" + processCount.toString());

                                      ProcessStep p = new ProcessStep();

                                      p.stepType = 'Input Step';
                                      p.stepCompleted = false;
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
                                      borderRadius: BorderRadius.circular(4)),
                                  elevation: 20,
                                  child: Center(child: Text("Form Complete!")),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Can add anything if necessary"),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () async {
                                    String? s =
                                        await storage.read(key: 'forms');

                                    print(s);

                                    // Everything Done! Publish the form here
                                    FormDetails _formDetails = details;
                                    _formDetails.formName = formNameCont.text;
                                    _formDetails.formJSON = formJsonCont.text;
                                    _formDetails.processSteps = processSteps;

                                    formDetails_string[formIndex] =
                                        json.encode(_formDetails.toJson());

                                    // Save the process
                                    await storage.write(
                                        key: 'forms',
                                        value: json.encode(formDetails_string));

                                    s = await storage.read(key: 'forms');

                                    print(s);

                                    // Make it possible to display form in other menus
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
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
  }
}
