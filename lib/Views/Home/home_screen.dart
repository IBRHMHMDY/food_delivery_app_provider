import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/category_model.dart';
import 'package:food_delivery_app_provider/Models/product_model.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/header_section.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/listview_categories.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/product_card.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/titlebar.dart';
import 'package:food_delivery_app_provider/Views/Home/Widgets/topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String category = "";
  List<ProductModel> productsCategory = [];
  @override
  void initState() {
    super.initState();
    // إرجاع الواجهة للوضع الطبيعي
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values, // status & navigation يرجعوا
    );
    if (categories.isNotEmpty) {
      category = categories[0].name;
      filterProductByCategory(category);
    }
  }

  filterProductByCategory(String selectedCategory) {
    setState(() {
      category = selectedCategory;
      if (categories[0].name == selectedCategory) {
        productsCategory = productsDemo;
      } else {
        productsCategory = productsDemo
            .where(
              (product) =>
                  product.category.toLowerCase() ==
                  selectedCategory.toLowerCase(),
            )
            .toList();
      }
    });
  }

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
              SizedBox(height: 15),
              TitleBar(),
              SizedBox(height: 15),
              HeaderSection(),
              SizedBox(height: 15),
              ListViewCategories(
                categories: categories,
                onSelectedCategory: (category) {
                  filterProductByCategory(category);
                },
              ),
              SizedBox(height: 25),
              Text(
                category != "All"
                    ? "Results: (${productsCategory.length})"
                    : "All Products (${productsCategory.length})",
                style: TextStyle(
                  color: kblack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    productsCategory.length,
                    (index) => Padding(
                      padding: index == 0
                          ? EdgeInsets.only(left: 10, right: 20)
                          : EdgeInsets.only(right: 25),
                      child: ProductCard(
                        products: productsCategory,
                        index: index,
                      ),
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
