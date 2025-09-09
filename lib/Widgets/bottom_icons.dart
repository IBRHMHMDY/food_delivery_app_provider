import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomIcon {
  final IconData selected, unselected;
  final String label;
  final double size;

  BottomIcon({
    required this.selected,
    required this.unselected,
    required this.label,
    this.size = 22,

  });
}

List<BottomIcon> bottomIcons = [
  BottomIcon(
    selected: Icons.home,
    unselected: Icons.home_outlined,
    label: "Home",
    
  ),
  BottomIcon(
    selected: Icons.shopping_cart,
    unselected: Icons.shopping_cart_outlined,
    label: "MyCart",
  ),
  BottomIcon(
    selected: CupertinoIcons.compass_fill,
    unselected: CupertinoIcons.compass,
    label: "Stat",
  ),
  BottomIcon(
    selected: Icons.person_rounded,
    unselected: Icons.person_outline_rounded,
    label: "Profile",
  ),
];
