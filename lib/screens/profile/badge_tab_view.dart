import 'package:flutter/material.dart';
import 'package:queezy/constants/app_images.dart';

class BadgeTabView extends StatelessWidget {
  const BadgeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: badges.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Image.asset(badges[index]);
      },
    );
  }

  static const badges = [
    AppImages.clockIconPng,
    AppImages.leaderboardIconPng,
    AppImages.smileIconPng,
    AppImages.starBadgeIconPng,
    AppImages.puzzleIconPng,
    AppImages.lockIconPng,
  ];
}
