import 'package:flutter/material.dart';
import 'package:listfy_app/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Constants.lightGray),
        filled: true,
        fillColor: Constants.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
    );
  }
}
