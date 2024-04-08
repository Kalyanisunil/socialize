
import '../pages/ediit_profile.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';

class AppRoute {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => Main_page(),
    '/editprofile': (context) => EditProfile()
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/editprofile';
}
