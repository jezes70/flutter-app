import 'package:flutter/material.dart';
import 'package:social_app/components/toolbar.dart';
import 'package:social_app/pages/main_page.dart';

import '../components/post_item.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key});

  List<String> users = [
    "jwseven",
    "smart",
    "morris",
    "sam",
    "usmandembele",
    "miracle",
    "ifeanyi",
    "mass",
    "Ekene",
    "okpara"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Toolbar(title: "Dashboard",
      
      actions: [
        IconButton(onPressed:() {}, icon: Image.asset('assets/images/Group 2.png'))

        ],
      ),

      // Add more action widgets as needed
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 24,
          );
        },
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
      ),
    );
  }
}
