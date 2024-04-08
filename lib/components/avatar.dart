import 'package:flutter/material.dart';

// ignore: camel_case_types
class avatar extends StatelessWidget {
  final double size;

  const avatar({super.key,  this.size=40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image.asset(
        'assets/temp/userimg.jpg',
        width: size,
        height: size,
      ),
    );
  }
}
