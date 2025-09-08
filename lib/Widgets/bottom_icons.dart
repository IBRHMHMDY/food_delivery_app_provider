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
    selected: CupertinoIcons.chat_bubble_text_fill,
    unselected: CupertinoIcons.chat_bubble_text,
    label: "Chats",
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
