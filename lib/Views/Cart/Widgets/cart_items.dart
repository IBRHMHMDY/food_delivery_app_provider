import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Controllers/cart_controller.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/cart_model.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  final CartModel cartItem;
  const CartItems({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    CartController cart = Provider.of<CartController>(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 110,
            width: size.width - 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: -25,
            left: 5,
            child: Transform.rotate(
              angle: 10 * pi / 180,
              child: SizedBox(
                height: 130,
                width: 130,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(cartItem.productModel.image, width: 130),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.productModel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, size: 20, color: kyellow),
                        Text(
                          cartItem.productModel.rate.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 20, color: kpink),
                        Text(
                          cartItem.productModel.distance.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "\$${cartItem.productModel.price.toStringAsFixed(2)}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width - 270,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: Colors.black54,
                    onPressed: () =>
                        cart.decreaseQuantity(cartItem.productModel),
                    icon: Icon(Icons.remove, color: Colors.white),
                  ),
                  Text(
                    cartItem.quantity.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        cart.increaseQuantity(cartItem.productModel),
                    icon: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 3,
            child: GestureDetector(
              child: IconButton(
                onPressed: () => cart.removeCartItem(cartItem.productModel),
                icon: Icon(Icons.delete, color: Colors.red.shade600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
