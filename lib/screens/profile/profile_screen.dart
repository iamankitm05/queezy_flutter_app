import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/constants/app_images.dart';
import 'package:queezy/screens/profile/badge_tab_view.dart';
import 'package:queezy/screens/profile/details_tab_view.dart';
import 'package:queezy/screens/profile/stats_tab_view.dart';
import 'package:queezy/widgets/my_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.sizeOf(context);

    return MyLayout(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.surfaceDesignPng),
            fit: BoxFit.cover,
          ),
        ),
        child: DefaultTabController(
          length: 3,
          child: ListView(
            children: [
              AppBar(
                titleSpacing: 20,
                backgroundColor: AppColors.transparent,
                foregroundColor: AppColors.white,
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                  Gap(10),
                ],
              ),

              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 6, right: 6, top: 70),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),

                    child: Column(
                      children: [
                        Gap(50),
                        Text('Madelyn Dias', style: textTheme.titleLarge),
                        Gap(20),
                        Card(
                          color: AppColors.primary,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.star_outline,
                                        color: AppColors.white,
                                      ),
                                      Text(
                                        'POINTS',
                                        style: textTheme.labelLarge?.copyWith(
                                          color: AppColors.grey,
                                        ),
                                      ),
                                      Text(
                                        '590',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 70, child: VerticalDivider()),
                                Expanded(
                                  child: Column(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.public,
                                        color: AppColors.white,
                                      ),
                                      Text(
                                        'WORLD RANK',
                                        textAlign: TextAlign.center,
                                        style: textTheme.labelLarge?.copyWith(
                                          color: AppColors.grey,
                                        ),
                                      ),
                                      Text(
                                        '#1,438',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 70, child: VerticalDivider()),
                                Expanded(
                                  child: Column(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.military_tech,
                                        color: AppColors.white,
                                      ),
                                      Text(
                                        'LOCAL RANK',
                                        textAlign: TextAlign.center,
                                        style: textTheme.labelLarge?.copyWith(
                                          color: AppColors.grey,
                                        ),
                                      ),
                                      Text(
                                        '#56',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        TabBar(
                          dividerHeight: 0,
                          tabs: [
                            Tab(text: 'Badge'),
                            Tab(text: 'Stats'),
                            Tab(text: 'Details'),
                          ],
                        ),

                        Gap(20),

                        SizedBox(
                          width: double.infinity,
                          height: screenSize.height - 154,
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              BadgeTabView(),
                              StatsTabView(),
                              DetailsTabView(),
                            ],
                          ),
                        ),

                        Gap(50),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.accent1,
                          foregroundImage: AssetImage(AppImages.avatar4Png),
                        ),

                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            AppImages.flag1Png,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
