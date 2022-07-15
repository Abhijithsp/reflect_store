// ignore: file_names
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final hintText;
  CustomTextField({Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(),
          child: TextField(
            controller: controller,
            autofocus: false,
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.blueGrey[200],
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
      ),
    );
  }
}
