import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Views/Cart/cart_screen.dart';
import 'package:food_delivery_app_provider/Views/Home/home_screen.dart';
import 'package:food_delivery_app_provider/Views/app_screens.dart';

class AppRoutes {
  // أسماء الـ routes
  static const String home = '/';
  static const String cart = '/cart';
  // Generate Routes 
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case cart:
        return MaterialPageRoute(builder: (_) => CartScreen());
      default:
        return MaterialPageRoute(builder: (_) => AppScreens());
    }
  }
}