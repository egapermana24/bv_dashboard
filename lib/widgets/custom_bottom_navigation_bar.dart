import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: AppIcons.svgIcon('Icons_Dashboard_Focus'),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: AppIcons.svgIcon('Icons_Booking_Check_Default'),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: AppIcons.svgIcon('Icons_Property_Default'),
          label: 'My Property',
        ),
        BottomNavigationBarItem(
          icon: AppIcons.svgIcon('Icons_Bell_Default'),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: AppIcons.svgIcon('Icons_User_Default'),
          label: 'Profile',
        ),
      ],
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
        color: AppColors.menuSelected,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        color: AppColors.menuUnSelected,
      ),
      selectedItemColor: AppColors.menuSelected,
      unselectedItemColor: AppColors.menuUnSelected,
      backgroundColor: AppColors.cardColor,
      iconSize: 24,
      type: BottomNavigationBarType.fixed,
    );
  }
}
