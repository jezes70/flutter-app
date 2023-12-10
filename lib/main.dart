// // ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/Dashboard': (context) =>  DashboardScreen(),
        '/register': (context) => RegisterScreen(),
        '/main': (context) => const MainPage(),
        '/edit_profile': (context) => const EditProfilePage(),
      },
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
