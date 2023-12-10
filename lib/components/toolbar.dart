import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({Key? key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/');
        },
      ),
      title:  Text(title, style: AppText.header1,),
      backgroundColor: AppColors.background,
      actions: actions,

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
