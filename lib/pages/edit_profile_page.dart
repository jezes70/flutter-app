import 'package:flutter/material.dart';
import 'package:social_app/components/toolbar.dart';
import 'package:social_app/config/app_strings.dart';
import 'package:social_app/styles/app_text.dart';
import 'package:social_app/components/app_text_field.dart';
import 'package:social_app/components/user_avatar.dart';
import '../styles/app_colors.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                const UserAvatar(
                  size: 120,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, bottom: 10),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Column(
                children: [
                  const Expanded(
                    child: AppTextField(hint: 'First name'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    child: AppTextField(hint: 'Last name'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    child: AppTextField(hint: 'Phone number'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    child: AppTextField(hint: 'Location'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    child: AppTextField(hint: 'Birthday'),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.fieldColor,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.male),
                            value: Gender.male,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.female),
                            value: Gender.female,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.other),
                            value: Gender.other,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
