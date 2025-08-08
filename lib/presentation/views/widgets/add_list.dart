import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/utils/constants.dart';

class AddList extends StatelessWidget {
  final VoidCallback? onAddList;

  const AddList({
    super.key,
    this.onAddList,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onAddList,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Constants.darkPurple, Constants.darkerPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onAddList,
            borderRadius: BorderRadius.circular(12),
            splashColor: Constants.darkPurple,
            highlightColor: Constants.darkPurple,
            child: Icon(
              FontAwesomeIcons.plus,
              color: Constants.lightGray,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}