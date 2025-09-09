import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Controllers/cart_controller.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Core/routes.dart';
import 'package:provider/provider.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    CartController carts = Provider.of<CartController>(context);
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Your Location",
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: Colors.black38,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on, size: 20, color: kyellow),
                Text(
                  "Tokyo,Japan",
                  style: TextStyle(color: kblack, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1.5),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(8),
                    right: Radius.circular(8),
                  ),
                  color: Colors.transparent,
                ),
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(width: 3),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.cart);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(8),
                        right: Radius.circular(8),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 20,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: korange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      carts.carts.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
