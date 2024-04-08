import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../pages/main_page.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final menus current;
  final menus name;
  const MyBottomNavigationBarItem({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.current,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(icon,
            colorFilter: ColorFilter.mode(
                current == name ? Colors.black : Colors.black.withOpacity(0.1),
                BlendMode.srcIn)));
  }
}
