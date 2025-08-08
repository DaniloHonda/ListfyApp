import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/presentation/views/auth/login.dart';
import 'package:listfy_app/presentation/views/widgets/auth_prompt.dart';
import 'package:listfy_app/presentation/views/widgets/custom_text_field.dart';
import 'package:listfy_app/presentation/views/widgets/labeled_checkbox.dart';
import 'package:listfy_app/presentation/views/widgets/primary_button.dart';
import 'package:listfy_app/utils/constants.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  bool _agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Constants.darkPurple, Constants.darkerPurple],
            ),
          ),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 
                          MediaQuery.of(context).padding.top,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Flexible(child: SizedBox(height: 20)),
                      
                      Text(
                        'Sign up to Listify!',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Constants.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 20),
                      
                      PrimaryButton(
                        text: 'Sign up with Google',
                        onPressed: () {
                          // Google login
                        },
                        fontSize: 16,
                        height: 50,
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          size: 20,
                          color: Constants.white,
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      
                      const Row(
                        children: [
                          Expanded(child: Divider(color: Constants.white)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Or continue with Email',
                              style: TextStyle(color: Constants.white, fontSize: 14),
                            ),
                          ),
                          Expanded(child: Divider(color: Constants.white)),
                        ],
                      ),
                      
                      const SizedBox(height: 20),
                      
                      CustomTextField(
                        hintText: 'Enter name',
                        keyboardType: TextInputType.name,
                      ),

                      const SizedBox(height: 12),
                      
                      CustomTextField(
                        hintText: 'Enter username',
                        keyboardType: TextInputType.text,
                      ),
                      
                      const SizedBox(height: 12),
                      
                      CustomTextField(
                        hintText: 'Enter email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      
                      const SizedBox(height: 12),
                      
                      CustomTextField(
                        hintText: 'Enter password',
                        obscureText: true,
                      ),
                      
                      const SizedBox(height: 12),
                      
                      LabeledCheckbox(
                        value: _agreeTerms,
                        onChanged: (value) {
                          setState(() {
                            _agreeTerms = value ?? false;
                          });
                        },
                        label: 'I agree with the Terms of Service and Privacy policy',
                        fontSize: 14,
                      ),
                      
                      const SizedBox(height: 20),

                      PrimaryButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Create Account',
                        fontSize: 16,
                        onPressed: () {
                          // Implement account creation logic
                        }
                      ),

                      const SizedBox(height: 15),

                      AuthPrompt(
                        promptText: 'Already have an account? ',
                        actionText: 'Login',
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      ),

                      const Spacer(flex: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}