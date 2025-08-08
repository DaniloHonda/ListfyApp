import 'package:flutter/material.dart';
import 'package:listfy_app/presentation/views/auth/login.dart';
import 'package:listfy_app/presentation/views/auth/register.dart';
import 'package:listfy_app/presentation/views/widgets/auth_prompt.dart';
import 'package:listfy_app/presentation/views/widgets/primary_button.dart';
import 'package:listfy_app/utils/constants.dart';


class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Constants.darkPurple, Constants.darkerPurple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
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

                PrimaryButton(
                  text: 'Sign up',
                  width: double.infinity,
                  height: 56,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const Register(),));
                  },
                ),
        
                const SizedBox(height: 16),

                AuthPrompt(
                  promptText: 'Already have an account? ',
                  actionText: 'Login',
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const Login(),));
                  },
                ),
                
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
