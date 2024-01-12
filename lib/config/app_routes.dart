import '../pages/Dashboard_Screen.dart';
import '../pages/Login_page.dart';
import '../pages/Register_Screen.dart';
import '../pages/edit_profile_page.dart';
import '../pages/main_page.dart';

class AppRoutes {

  static final pages = {
  '/': (context) => const LoginPage(),
  '/dashboard': (context) =>  DashboardScreen(),
  '/register': (context) => RegisterScreen(),
  '/main': (context) => const MainPage(),
  '/edit_profile': (context) =>  EditProfilePage(),
  };

  static const login = '/';
  static const main = '/main';
  static const dashboard = '/dashboard';
  static const editProfile = '/edit_profile';

}