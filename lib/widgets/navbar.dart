import 'package:flutter/material.dart';
import 'package:lexis_best_app/datenspeicher/styles.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int) onTabTapped;
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onTabTapped,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/pfote.png', width: 24, height: 24),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/Planner.png', width: 24, height: 24),
          label: 'Planner',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/ShoppingCart.png',
              width: 24, height: 24),
          label: 'Einkaufsliste',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/Chat.png', width: 24, height: 24),
          label: 'Network',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/User.png', width: 24, height: 24),
          label: 'Profil',
        ),
      ],
      selectedItemColor: lexiBrown,
      unselectedItemColor:
          Colors.grey, // Textfarbe für nicht ausgewählte Labels
      showUnselectedLabels:
          true, // Labels für nicht ausgewählte Elemente anzeigen
      type: BottomNavigationBarType
          .fixed, // Erforderlich, um alle Labels anzuzeigen
    );
  }
}
