import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Widgets/bottom_icons.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  const BottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      height: 85,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              bottomIcons.length,
              (index) => GestureDetector(
                onTap: () {
                  widget.onTap(index);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Icon(
                        widget.currentIndex == index
                            ? bottomIcons[index].selected
                            : bottomIcons[index].unselected,
                        color: kblack,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: const BoxDecoration(
                          color: kblack,
                          shape: BoxShape.circle,
                        ),
                        width: widget.currentIndex == index ? 7 : 0,
                        height: widget.currentIndex == index ? 7 : 0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
