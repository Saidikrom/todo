// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class ToDoInput extends StatelessWidget {
  const ToDoInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 60,
          child: TextField(
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
    );
  }
}

class color extends StatelessWidget {
  const color({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.circle,
        color: Color.fromARGB(255, 33, 150, 83),
      ),
      iconSize: 50,
    );
  }
}
