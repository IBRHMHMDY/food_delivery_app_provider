import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app_provider/Models/cart_model.dart';
import 'package:food_delivery_app_provider/Models/product_model.dart';

class CartController extends ChangeNotifier{
  List<CartModel> _carts = [];
  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts){
    _carts = carts;
    notifyListeners();
  }

  productExist(ProductModel product) {
    if(_carts.indexWhere((elements)=>elements.productModel == product) == -1){
      return false;
    }else{
      return true;
    }
  }

  addCart(ProductModel product){
    if(productExist(product)){
      int index = _carts.indexWhere((element)=>element.productModel == product);
      _carts[index].quantity += 1;
    }else{
      _carts.add(CartModel(productModel: product, quantity: 1));
    }
    notifyListeners();
  }
  
  increaseQuantity(ProductModel product){
    int index = _carts.indexWhere((element)=>element.productModel == product);
    _carts[index].quantity += 1;
    notifyListeners();
  }
  decreaseQuantity(ProductModel product){
    int index = _carts.indexWhere((element)=>element.productModel == product);
    _carts[index].quantity -= 1;
    notifyListeners();
  }

  double totalCart(){
    double total = 0;
    for (var i = 0; i < _carts.length; i++) {
      total = total + _carts[i].quantity * _carts[i].productModel.price;
    }
    return total;
  }
}