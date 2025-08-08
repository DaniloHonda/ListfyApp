import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/utils/constants.dart';

class MainNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MainNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  BottomNavigationBarItem _buildItem(IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 24),
      activeIcon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Constants.purpleTransparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, size: 24, color: Constants.whitePurple),
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Constants.darkPurple, Constants.darkerPurple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Constants.purpleTransparent,
            blurRadius: 15,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          backgroundColor: Constants.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
          selectedItemColor: Constants.whitePurple,
          unselectedItemColor: Constants.lightGray,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            _buildItem(FontAwesomeIcons.house),
            _buildItem(FontAwesomeIcons.plus),
            _buildItem(FontAwesomeIcons.gear),
          ],
        ),
      ),
    );
  }
}
