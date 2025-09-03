import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Views/Home/home_screen.dart';
import 'package:food_delivery_app_provider/Views/OnBoarding/onboarding_screen.dart';
import 'package:food_delivery_app_provider/Widgets/bottom_navbar.dart';

class AppScreens extends StatefulWidget {
  const AppScreens({super.key});

  @override
  State<AppScreens> createState() => _AppScreensState();
}

class _AppScreensState extends State<AppScreens> {
  int currentIndex = -1;
  List<Widget> screens = [HomeScreen(), Scaffold(), Scaffold(), Scaffold()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      body: currentIndex == -1
          ? OnboardingScreen(
              onFinish: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            )
          : screens[currentIndex],
      bottomNavigationBar: currentIndex == -1
          ? null
          : BottomNavbar(
              currentIndex: currentIndex,
              onTap: (index) => setState(() {
                currentIndex = index;
              }),
            ),
    );
  }
}
