import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_provider/Views/OnBoarding/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // تفعيل وضع ملء الشاشة
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: OnboardingScreen(),
    );
  }
}
