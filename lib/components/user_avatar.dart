import 'package:flutter/material.dart';

import '../pages/edit_profile_page.dart';
import '../styles/app_colors.dart';

class UserAvatar extends StatelessWidget {
  final double size;

  const UserAvatar({Key? key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  EditProfilePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.background,
          ),
          child: Image.asset(
            'assets/temp/user1.png',
            height: size,
            width: size,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
