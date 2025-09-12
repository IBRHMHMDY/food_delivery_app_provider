import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/routes.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AppRoutes.home),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade400,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.grey.shade600,
                size: 20,
              ),
            ),
          ),
        ),
        SizedBox(width: 80),
        Text(
          "MyCart",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
