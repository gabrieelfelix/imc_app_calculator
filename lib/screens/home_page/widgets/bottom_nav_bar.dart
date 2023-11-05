import 'package:flutter/material.dart';
import 'package:imc_calculator/provider/imc_manager.dart';
import 'package:imc_calculator/utils/colors.dart';
import 'package:provider/provider.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ImcManager>(
      builder: (context, imc, child) => BottomNavigationBar(
        elevation: 3,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: ColorsDefaults.backgroundColor,
        currentIndex: imc.currentIndex,
        onTap: (value) {
          imc.changeNavBar(value);
          imc.pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded, color: Colors.grey, size: 40),
            activeIcon:
                Icon(Icons.calculate_rounded, color: Colors.white, size: 40),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_history_rounded,
              color: Colors.grey,
              size: 40,
            ),
            activeIcon: Icon(
              Icons.location_history,
              color: Colors.white,
              size: 40,
            ),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
