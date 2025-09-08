import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/category_model.dart';

class ListViewCategories extends StatefulWidget {
  final List<CategoryModel> categories;
  final Function(String) onSelectedCategory;
  const ListViewCategories({super.key, required this.categories, required this.onSelectedCategory});

  @override
  State<ListViewCategories> createState() => _ListViewCategoriesState();
}

class _ListViewCategoriesState extends State<ListViewCategories> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          final category = widget.categories[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 120,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: currentIndex == index ? korange : Colors.white, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: (){setState(() {
                  currentIndex = index;
                });
                widget.onSelectedCategory(category.name);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(category.image),
                    SizedBox(height: 10),
                    Text(
                      category.name,
                      style: TextStyle(
                        color: kblack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
