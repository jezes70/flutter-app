import 'package:flutter/material.dart';
import 'package:social_app/pages/Dashboard_Screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        title: const Text(
          'Hello, welcome back!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 15,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is Clicked');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Forget Password?'),
                  ),
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/main'
                          // MaterialPageRoute(
                          //   builder: (context) {
                          //     return const DashboardScreen();
                          //   },
                          // ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Login'),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Or Sign in with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Google is Clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Login in with Google'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print('Facebook is Clicked');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Login in with Facebook'),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('Register is Clicked');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Navigation {}
