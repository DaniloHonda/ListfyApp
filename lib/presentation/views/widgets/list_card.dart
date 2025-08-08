import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/utils/constants.dart';

class ListCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool hasIcon;

  const ListCard({
    super.key,
    required this.icon,
    required this.title,
    required this.hasIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Constants.darkPurple, Constants.darkerPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Constants.darkPurple,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Constants.purpleTransparent,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Constants.purpleTransparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Constants.lightGray,
                size: 26, // Ícone maior
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Constants.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                if (hasIcon)
                  const Icon(
                    FontAwesomeIcons.star,
                    color: Constants.lightGray,
                    size: 20,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}