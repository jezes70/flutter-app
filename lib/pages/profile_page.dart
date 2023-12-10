import 'package:flutter/material.dart';
import 'package:social_app/pages/main_page.dart';
import 'package:social_app/pages/edit_profile_page.dart';
import 'package:social_app/styles/app_colors.dart';
import 'package:social_app/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed('/edit_profile');
                  break;
                case ProfileMenu.logout:
                  print('log out');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                const PopupMenuItem(
                  child: Text('Log out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
        leading: const LeadingIconButton(route: '/Dashboard'),
        backgroundColor: AppColors.background,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.background,
              ),
              child: Image.asset(
                'assets/temp/user1.png',
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 12),
          const Text(
            'Mass Miracle',
            style: AppText.header2,
          ),
          const SizedBox(height: 12),
          const Text(
            'Madagascar',
            style: AppText.subtitle3,
          ),
          const SizedBox(height: 24),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '509',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              SizedBox(width: 24),
              Column(
                children: [
                  Text(
                    '239',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              SizedBox(width: 24),
              Column(
                children: [
                  Text(
                    '1006',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
