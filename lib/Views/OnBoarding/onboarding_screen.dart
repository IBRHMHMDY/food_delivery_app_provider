import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_provider/Core/constants.dart';
import 'package:food_delivery_app_provider/Models/onboard_model.dart';
import 'package:food_delivery_app_provider/Views/Home/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
            onPageChanged: (value) => setState(() {
              currentIndex = value;
            }),
            itemCount: onboards.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned(
                    top: -70,
                    left: 0,
                    right: 0,
                    child: FadeInUp(
                      delay: Duration(milliseconds: 500),
                      child: Image.asset(
                        onboards[index].imagePath,
                        width: 600,
                        height: 600,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 1.9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: FadeInDown(
                        delay: Duration(milliseconds: 500),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              onboards[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              onboards[index].subTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboards.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  margin: EdgeInsets.only(right: 10),
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? korange : kbgColor,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInUp(
                delay: Duration(milliseconds: 700),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      color: korange,
                      height: 75,
                      minWidth: MediaQuery.of(context).size.width - 50,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
