import 'package:flutter/material.dart';
import 'package:social_app/config/app_routes.dart';
import 'package:social_app/pages/Dashboard_Screen.dart';
import 'package:social_app/pages/Login_page.dart';
import 'package:social_app/pages/Register_Screen.dart';
import 'package:social_app/pages/edit_profile_page.dart';
import 'package:social_app/pages/main_page.dart';
import 'package:social_app/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,


    );
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => DashboardScreen(),
//         '/login': (context) => LoginPage(),
//         '/register': (context) => RegisterScreen(),
//       },
//     );
//   }
// }
