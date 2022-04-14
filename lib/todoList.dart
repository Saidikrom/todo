import 'package:flutter/material.dart';
import 'models/toDoModel.dart';

class todoList extends StatelessWidget {
  String title;
  Color color;

  todoList({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: 15.0,
          right: 0.0,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        tileColor: const Color.fromARGB(18, 209, 189, 189),
        leading: Icon(
          Icons.circle,
          color: color,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          padding: const EdgeInsets.only(right: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Color.fromARGB(255, 101, 190, 138),
          ),
          height: double.infinity,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
