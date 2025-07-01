import 'package:flutter/material.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/constants/app_images.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Expanded(child: PageView(children: [
            
            ],)),
          SizedBox(
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
                              //...
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
                              //...
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
        ],
      ),
    );
  }
}
