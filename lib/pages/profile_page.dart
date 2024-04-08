// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/avatar.dart';
import 'package:namer_app/config/app_route.dart';

import 'package:namer_app/styles/appcolor.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // String get routeName => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoute.editprofile);
                  break;
                case ProfileMenu.logout:
                  // LoginPage();
                  print("logout");
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Edit"),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text("Log out"),
                  value: ProfileMenu.logout,
                ),
                // PopupMenuItem(child: Text("Exit")),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          avatar(
            size: 90,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Alexandra Adams',
            style: TextStyle(color: AppColors.white, fontSize: 20),
          ),
          Text(
            "New York",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('50k',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                  Text('Followers',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                ],
              ),
              Column(
                children: [
                  Text('200',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                  Text('posts',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                ],
              ),
              Column(
                children: [
                  Text('400',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                  Text('following',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                      )),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
