// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/avatar.dart';
import 'package:namer_app/components/text_field.dart';
import 'package:namer_app/config/app_route.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/styles/appcolor.dart';

enum Gender { none, male, female, other }

// ignore: must_be_immutable
class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(children: [
                avatar(
                  size: 130,
                ),
                Positioned(
                    bottom: 0,
                    right: 13,
                    child: Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.white,
                        ))),
              ]),
              SizedBox(
                height: 60,
              ),
              AppTextField(hint: "First name"),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: "Last name"),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: "Phone number"),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: "Date of birth  "),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: "Location"),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                    color: Color.fromARGB(114, 255, 255, 255),
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              visualDensity: VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              title: Text(
                                "Male",
                                style: TextStyle(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.zero,
                              value: Gender.male,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.male;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            title: Text("female"),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(
                                () {
                                  gender = Gender.female;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            title: Text("Others"),
                            contentPadding: EdgeInsets.zero,
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(
                                () {
                                  gender = Gender.other;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        // push replacement is used so that there is no back navigating to login page
                        return HomePage();
                      },
                    ),
                  );
                  Navigator.of(context).pushNamed(AppRoute.main);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "Edit",
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
