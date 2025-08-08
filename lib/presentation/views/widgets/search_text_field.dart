import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/utils/constants.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText = 'Search',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Constants.darkPurple,
          width: 1.5,
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
          color: Constants.white,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Constants.mediumGray,
            fontSize: 18,
          ),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Constants.darkPurple,
            size: 20,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
