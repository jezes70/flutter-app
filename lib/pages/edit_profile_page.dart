import 'package:flutter/material.dart';
import 'package:social_app/components/toolbar.dart';
import 'package:social_app/styles/app_text.dart';
import 'package:social_app/components/app_text_field.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: const Column(
        children: [
          AppTextField(hint: 'First name'),
          AppTextField(hint: 'Last name'),
          AppTextField(hint: 'Phone number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
