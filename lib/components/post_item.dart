import 'package:flutter/material.dart';

import '../styles/app_text.dart';


class PostItem extends StatelessWidget {
   final String? user;
   PostItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/temp/user1.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(
                width: 16,
              ),
               Text(
                user ?? '',
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          const SizedBox(
            height: 12,
          ),
          const Text('Chasing sunsets and good vibes, one shot at a time! 🌅✨ Embracing the magic in every sunset, capturing the hues that paint the sky. Lifes an adventure, and each photo is a story waiting to be told. 📸✨ #SunsetMagic #AdventureTime #PhotographyJourney #ChasingDreams',
            style: AppText.subtitle3,
          )

        ],
      ),
    );
  }
}
