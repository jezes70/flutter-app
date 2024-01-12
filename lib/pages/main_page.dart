import 'package:flutter/material.dart';
import 'package:social_app/pages/profile_page.dart';

import '../styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const  MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex], // Use the correct variable name here
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Love',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  final List<Widget?> pages = [
    Container(
      // color: Colors.blue,
      child: const Center(child: Text('Dashboard Content')),
    ),
    const Center(
      child: Text('Love'),
    ),
    const Center(
      child: Text('Add Post'),
    ),
    const ProfilePage(),
    const Center(
      child: Text('Messages'),
    ),
  ];

}

class LeadingIconButton extends StatelessWidget {
  const LeadingIconButton({
    Key? key, required this.route,
  }) : super(key: key);
final String route;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(route);
      },
    );
  }
}
