import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/category_model.dart';
import 'package:food_delivery_app_provider/Models/product_model.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/header_section.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/listview_categories.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/product_card.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topbar(),
              SizedBox(height: 50),
              TitleBar(),
              SizedBox(height: 20),
              HeaderSection(),
              SizedBox(height: 15),
              ListViewCategories(categories: categories),
              SizedBox(height: 15),
              Text(
                "Result(40)",
                style: TextStyle(
                  color: kblack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    products.length,
                    (index) => Padding(
                      padding: index == 0 ? EdgeInsets.only(left: 25,right: 25): EdgeInsets.only(right: 25),
                      child: ProductCard(products: products,index: index,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
