import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Models/category_model.dart';

class CategoriesController extends ChangeNotifier {
  final List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;
  String categoryName = "";
  getAll(){
    return categories;
  }
  // Assuming you want to pass the categories as a parameter to this method
  getSelectedCategory(int index) {
    if (categories.isNotEmpty) {
      categoryName = categories[index].name;
    }
    notifyListeners();
  }
}
