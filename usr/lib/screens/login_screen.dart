import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    '🎬 Dokuzu Series',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 48.0),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Email or phone number',
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      prefixIconColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Handle login logic
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Log In'),
                  ),
                  const SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to Sign Up screen
                    },
                    child: const Text("Don't have an account? Sign Up"),
                  ),
                  const SizedBox(height: 24.0),
                  const Row(
                    children: <Widget>[
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('OR', style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () { /* TODO: Google Sign-In */ },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Text(
                            'G',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D0D0D),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      GestureDetector(
                        onTap: () { /* TODO: Apple Sign-In */ },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.apple,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
