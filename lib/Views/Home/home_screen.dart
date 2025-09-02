import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Models/category_model.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/header_section.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/listview_categories.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/titlebar.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/topbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Topbar(),
              SizedBox(height: 50,),
              TitleBar(),
              SizedBox(height: 20),
              HeaderSection(),
              SizedBox(height: 15,),
              ListViewCategories(categories: categories,),
            ],
          ),
        ),
      ),
    );
  }
}
