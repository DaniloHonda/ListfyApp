import 'package:flutter/material.dart';
import 'package:listfy_app/presentation/views/auth/register.dart';
import 'package:listfy_app/presentation/views/widgets/auth_button.dart';
import 'package:listfy_app/presentation/views/widgets/login_prompt.dart';


class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 93, 63, 104),
              Color.fromARGB(255, 62, 39, 80),
              Color.fromARGB(255, 49, 33, 59),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                const Spacer(flex: 2),

                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Welcome to\nListfy!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),

                const Spacer(flex: 3),

                AuthButton(
                  text: 'Sign up',
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const Register(),));
                  },
                ),

                const SizedBox(height: 16),
                const LoginPrompt(),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
