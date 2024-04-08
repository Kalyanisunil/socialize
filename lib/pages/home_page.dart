import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/postitem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentUser = FirebaseAuth.instance.currentUser;
  List<String> users = [];

  @override
  void initState() {
    super.initState();
    mockUsersFromServer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: 'Feeds'),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 24);
        },
      ),
    );
  }

  void mockUsersFromServer() {
    for (var i = 0; i < 50; i++) {
      setState(() {
        users.add("user number $i");
      });
    }
  }
}
