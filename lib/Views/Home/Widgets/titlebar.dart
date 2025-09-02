
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Let's find the best\nfood around you",
      style: TextStyle(
        color: const Color(0xFF5E6997),
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}