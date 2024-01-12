import 'package:flutter/material.dart';
import 'package:social_app/components/user_avatar.dart';
import 'package:social_app/config/app_routes.dart';
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
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
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
        leading: const LeadingIconButton(route: AppRoutes.dashboard),
        backgroundColor: AppColors.background,
      ),
      body: const Column(
        children: [
          UserAvatar(size: 120,),

          SizedBox(height: 12),
          Text(
            'Mass Miracle',
            style: AppText.header2,
          ),
          SizedBox(height: 12),
          Text(
            'Madagascar',
            style: AppText.subtitle3,
          ),
          SizedBox(height: 24),
          Row(
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
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
