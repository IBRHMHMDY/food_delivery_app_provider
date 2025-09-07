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
                  children: [
                    Icon(
                      widget.currentIndex == index
                          ? bottomIcons[index].selected
                          : bottomIcons[index].unselected,
                      color: kblack,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: widget.currentIndex == index ? 60 : 0,
                      height: widget.currentIndex == index ? 20 : 0,
                      child: widget.currentIndex == index
                          ? Center(
                              child: Text(
                                bottomIcons[index].label,
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            )
                          : Text(""),
                    ),
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
