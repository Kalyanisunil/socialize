import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:namer_app/pages/login_page.dart';

import '../components/text_field.dart';
import '../config/app_route.dart';
import '../config/app_strings.dart';
import '../styles/appcolor.dart';
// import 'package:namer_app/components/appbar.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Spacer(),
            const Text(
              "Register",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: ' EBGaramond'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Dive into the new era of Socialize",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: ' EBGaramond'),
            ),
            Spacer(),
            const AppTextField(hint: "First name"),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(hint: "Last name"),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(hint: "Date of birth "),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(hint: "Password"),
            const SizedBox(
              height: 10,
            ),
            const AppTextField(hint: "Confirm password"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        // push replacement is used so that there is no back navigating to login page
                        return LoginPage();
                      },
                    ),
                  );
                  // print("Logging");
                  Navigator.of(context).pushNamed(AppRoute.login);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Register",
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
