import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          label: Text(hint),
          labelStyle: TextStyle(color: Colors.black),
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Color.fromARGB(114, 255, 255, 255),
          filled: true,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
