import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_provider/Views/app_screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Full Screen when start App
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
      title: 'Food Delivery App',
      home: AppScreens(),
    );
  }
}
