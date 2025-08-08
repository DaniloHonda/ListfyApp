import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/utils/constants.dart';

class AllLists extends StatelessWidget {
  final VoidCallback? onViewAllLists;
  
  const AllLists({
    super.key,
    this.onViewAllLists,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onViewAllLists,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Constants.darkPurple, Constants.darkerPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Constants.primaryPurple,
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
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.bars,
                    color: Constants.lightGray,
                    size: 40, 
                  ),

                  const SizedBox(height: 14),

                  Text(
                    'See all lists',
                    style: TextStyle(
                      color: Constants.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    'Manage all your lists here',
                    style: TextStyle(
                      color: Constants.lightGray,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            Positioned(
              right: 0.5,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Constants.purpleTransparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  color: Constants.lightGray,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}