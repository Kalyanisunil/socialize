// ignore_for_file: dead_code

import 'package:flutter/material.dart';
// import 'package:namer_app/styles/appcolor.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
