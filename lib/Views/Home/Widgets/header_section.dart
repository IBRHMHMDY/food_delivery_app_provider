import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Find by Categories",
            style: TextStyle(
              color: kblack,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "See all",
              style: TextStyle(color: korange, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
