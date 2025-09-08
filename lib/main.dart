import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Controllers/cart_controller.dart';
import 'package:food_delivery_app_provider/Controllers/categories_controller.dart';
import 'package:food_delivery_app_provider/Views/app_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create)=> CartController()),
        ChangeNotifierProvider(create: (create)=> CategoriesController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery App',
        home: AppScreens(),
      ),
    );
  }
}
