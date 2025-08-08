import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/presentation/views/auth/register.dart';
import 'package:listfy_app/presentation/views/widgets/auth_prompt.dart';
import 'package:listfy_app/presentation/views/widgets/custom_text_field.dart';
import 'package:listfy_app/presentation/views/widgets/labeled_checkbox.dart';
import 'package:listfy_app/presentation/views/widgets/primary_button.dart';
import 'package:listfy_app/utils/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  bool _rememberMe = false;

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
                minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
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
                        'Log in to Listify!',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Constants.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: 30),
                      
                      PrimaryButton(
                        text: 'Log in with Google',
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
                      
                      const SizedBox(height: 25),
                      
                      const Row(
                        children: [
                          Expanded(child: Divider(color: Constants.white)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Or log in with Email',
                              style: TextStyle(color: Constants.white, fontSize: 14),
                            ),
                          ),
                          Expanded(child: Divider(color: Constants.white)),
                        ],
                      ),
                      
                      const SizedBox(height: 30),
                  
                      CustomTextField(
                        hintText: 'Enter username or email',
                        keyboardType: TextInputType.text,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Implement forgot password
                            },
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Constants.white,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                                decorationColor: Constants.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      CustomTextField(
                        hintText: 'Enter password',
                        obscureText: true,
                      ),
                      
                      const SizedBox(height: 16),
                      
                      LabeledCheckbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                        label: 'Remember me',
                      ),
                      
                      const SizedBox(height: 30),

                      PrimaryButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Log in',
                        fontSize: 16,
                        onPressed: () {
                          // Implement log in logic
                        }
                      ),
                      
                      const SizedBox(height: 18),
                      
                      AuthPrompt(
                        promptText: 'Don\'t have an account? ',
                        actionText: 'Sign up',
                        onTap: () {
                          Navigator.pushReplacement(context, 
                          MaterialPageRoute(builder:(context) => const Register(),));
                        },
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