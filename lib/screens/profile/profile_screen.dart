import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/constants/app_images.dart';
import 'package:queezy/widgets/my_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.surfaceDesignPng),
            fit: BoxFit.cover,
          ),
        ),
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
                  height: 500,
                  margin: EdgeInsets.only(left: 6, right: 6, top: 100),

                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),

                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.accent1,
                  foregroundImage: AssetImage(AppImages.avatar7Png),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
