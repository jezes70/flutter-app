import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;

  const AppTextField({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
