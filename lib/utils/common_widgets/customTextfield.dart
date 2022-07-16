// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        padding: EdgeInsets.symmetric(
            vertical: Adaptive.h(1.0), horizontal: Adaptive.h(1.0)),
        child: Container(
          width: Adaptive.w(100),
          height: Adaptive.h(10),
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
