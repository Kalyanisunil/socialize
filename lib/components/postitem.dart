import 'package:flutter/material.dart';
import 'package:namer_app/styles/appcolor.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/temp/userimg.jpg', width: 50, height: 50),
              SizedBox(
                width: 10,
              ),
              Text(
                user,
                style: TextStyle(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset('assets/temp/post1.jpg'),
          Text("Hey Fellas Want some champagne with Margharita Pizza? :)"),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
