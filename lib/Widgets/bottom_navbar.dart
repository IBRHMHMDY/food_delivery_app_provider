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
      color: Colors.black,
      elevation: 5,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      widget.currentIndex == index
                          ? bottomIcons[index].selected
                          : bottomIcons[index].unselected,
                      color: widget.currentIndex == index ? korange : Colors.grey.shade600,
                      size: bottomIcons[index].size,
                    ),
                    SizedBox(height: 3),
                    widget.currentIndex == index
                        ? AnimatedOpacity(
                            duration: Duration(milliseconds: 200),
                            opacity: widget.currentIndex == index ? 1 : 0,
                            child: Center(
                              child: Text(
                                bottomIcons[index].label,
                                style: TextStyle(
                                  color: korange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
