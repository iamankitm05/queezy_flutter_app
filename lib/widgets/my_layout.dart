import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/constants/app_images.dart';
import 'package:queezy/screens/home/home_screen.dart';
import 'package:queezy/screens/profile/profile_screen.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Positioned.fill(child: child),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 100,
              child: Stack(
                children: [
                  Image.asset(
                    AppImages.vectorPng,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),

                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      height: kBottomNavigationBarHeight,
                      child: Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              height: double.infinity,
                              onPressed: () {
                                Get.to(() => HomeScreen());
                              },
                              child: Icon(Icons.home_outlined),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              height: double.infinity,
                              onPressed: () {
                                //...
                              },
                              child: Icon(Icons.search),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Expanded(
                            child: MaterialButton(
                              height: double.infinity,
                              onPressed: () {
                                //...
                              },
                              child: Icon(Icons.leaderboard_outlined),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              height: double.infinity,
                              onPressed: () {
                                Get.to(() => ProfileScreen());
                              },
                              child: Icon(Icons.person_outline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.white,
                      ),
                      icon: Icon(Icons.add, size: 38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
