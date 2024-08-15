import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        cardColor: AppColors.cardColor,
      ),
      home: DashboardScreen(),
    );
  }
}
