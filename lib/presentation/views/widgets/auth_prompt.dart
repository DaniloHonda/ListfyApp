import 'package:flutter/material.dart';
import 'package:listfy_app/utils/constants.dart';

class AuthPrompt extends StatelessWidget {
  final String promptText;
  final String actionText;
  final VoidCallback onTap;

  const AuthPrompt({
    super.key,
    required this.promptText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          promptText,
          style: const TextStyle(
            color: Constants.lightGray,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: const TextStyle(
              color: Constants.white,
              fontSize: 16,
              decoration: TextDecoration.underline,
              decorationColor: Constants.white,
            ),
          ),
        ),
      ],
    );
  }
}
