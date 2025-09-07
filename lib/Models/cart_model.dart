import 'package:food_delivery_app_provider/Models/product_model.dart';

class CartModel {
  final ProductModel productModel;
  int quantity;

  CartModel({required this.productModel,required this.quantity});
}