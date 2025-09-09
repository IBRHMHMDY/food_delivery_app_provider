import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Controllers/cart_controller.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/cart_model.dart';
import 'package:food_delivery_app_provider/Views/Cart/Widgets/cart_items.dart';
import 'package:food_delivery_app_provider/Views/Cart/Widgets/top_bar.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CartController carts = Provider.of<CartController>(context);
    List<CartModel> cartItems = carts.carts.reversed.toList();
    return Scaffold(
      backgroundColor: kbgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 25,
                bottom: 15,
              ),
              child: TopBar(),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...List.generate(
                      cartItems.length,
                      (index) => Container(
                        height: 145,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          top: index == 0 ? 20 : 0,
                          right: 25,
                          left: 25,
                          bottom: 30,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [CartItems(cartItem: cartItems[index])],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [Text("Delivery",style: TextStyle(
                    color: kblack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),), Spacer(), Text("\$20",style: TextStyle(
                    color: kblack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)]),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Total",style: TextStyle(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Text("${carts.totalCart()}",style: TextStyle(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: kblack,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            spreadRadius: 1,
                            blurRadius: 3,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text("Pay \$${carts.totalCart() + 20}",style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
