import 'package:flutter/material.dart';
import 'package:todo/models/toDoModel.dart';
import 'circles.dart';
import 'todoList.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ToDo(),
      theme: ThemeData(),
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  late Color pickedcolor = Colors.black;
  final userInput = TextEditingController();

  void dataSubmitted() {
    if (userInput.text.isEmpty) {
      return;
    }
    final takenColor = pickedcolor;
    var takenInput = userInput.text;
    void snackBar() {
      setState(() {
        const snackBar = SnackBar(
          content: Text('Rangni tanglang!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }

    // void ShowToastt() => Fluttertoast.showToast(
    //       msg: 'Rangni Tanglang',
    //       fontSize: 18,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //     );
    if (takenInput.isEmpty || takenColor == Colors.black) {
      return snackBar();
    } else {
      setState(() {
        _newToDo(takenColor, takenInput);
        userInput.clear();
        print(takenInput);
        print(takenColor);
        print(myToDoList);
      });
    }
  }

  void _newToDo(Color myTakenColor, String myTakenInput) {
    final nwToDo = ToDoModel(color: myTakenColor, name: myTakenInput);
    setState(() {
      myToDoList.add(nwToDo);
    });
  }

  final List<ToDoModel> myToDoList = [
    ToDoModel(color: Colors.green, name: 'name'),
    ToDoModel(color: Colors.red, name: 'surname'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 201, 76),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Qaydnoma',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myToDoList.length,
              itemBuilder: ((context, index) {
                const Padding(padding: EdgeInsets.all(10));
                return todoList(
                  color: myToDoList[index].color,
                  title: myToDoList[index].name,
                );
              }),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorCircle(
                    myColor: Colors.green,
                    onCirclePressed: () {
                      setState(() {
                        pickedcolor = Colors.green;
                      });
                    },
                  ),
                  ColorCircle(
                    myColor: const Color.fromARGB(255, 235, 87, 87),
                    onCirclePressed: () {
                      setState(() {
                        pickedcolor = const Color.fromARGB(255, 235, 87, 87);
                      });
                    },
                  ),
                  ColorCircle(
                    myColor: const Color.fromARGB(255, 242, 201, 76),
                    onCirclePressed: () {
                      setState(() {
                        pickedcolor = const Color.fromARGB(255, 242, 201, 76);
                      });
                    },
                  ),
                  ColorCircle(
                    myColor: const Color.fromARGB(255, 47, 128, 237),
                    onCirclePressed: () {
                      setState(() {
                        pickedcolor = const Color.fromARGB(255, 47, 128, 237);
                      });
                    },
                  ),
                  ColorCircle(
                    myColor: const Color.fromARGB(255, 242, 153, 74),
                    onCirclePressed: () {
                      setState(() {
                        pickedcolor = const Color.fromARGB(255, 242, 153, 74);
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 60,
                        child: TextField(
                          controller: userInput,
                          onSubmitted: (_) => dataSubmitted(),
                          cursorColor: const Color.fromRGBO(175, 175, 175, 175),
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              padding: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.black,
                              ),
                              height: double.infinity,
                              child: IconButton(
                                onPressed: dataSubmitted,
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 47, 128, 237),
                                width: 2,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 47, 128, 237),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
