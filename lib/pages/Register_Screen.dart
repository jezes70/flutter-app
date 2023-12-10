import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('RegisterScreenContent'),
      ),
    );
  }
}
