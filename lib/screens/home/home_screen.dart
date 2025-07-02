import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/constants/app_images.dart';
import 'package:queezy/widgets/my_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MyLayout(
      child: SafeArea(
        child: ListView(
          children: [
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.light_mode_outlined,
                              size: 18,
                              color: AppColors.white,
                            ),
                            Gap(8),
                            Text(
                              'GOOD MORNING',
                              style: textTheme.labelSmall?.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        Gap(6),
                        Text(
                          'Madelyn Dias',
                          style: textTheme.titleLarge?.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.secondary,
                    foregroundImage: AssetImage(AppImages.avatar1Png),
                  ),
                ],
              ),
            ),

            Card(
              color: AppColors.pink3,
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RECENT QUIZ',
                            style: textTheme.labelLarge?.copyWith(
                              color: AppColors.pink1,
                            ),
                          ),
                          Gap(6),
                          Row(
                            children: [
                              Icon(
                                Icons.headphones,
                                size: 18,
                                color: AppColors.maroon,
                              ),
                              Gap(8),
                              Text(
                                'A Basic Music Quiz',
                                style: textTheme.titleMedium?.copyWith(
                                  color: AppColors.maroon,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.pink1,
                      child: Text(
                        '64%',
                        style: textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(AppImages.surfaceDesignPng),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.accent1,
                      foregroundImage: AssetImage(AppImages.avatar6Png),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'FEATURED',
                            style: textTheme.bodyLarge?.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Gap(20),
                          Text(
                            'Take part in challenges with friends or other players',
                            textAlign: TextAlign.center,
                            style: textTheme.bodyLarge?.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Gap(20),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.my_location),
                            label: Text('Find Friends'),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.accent1,
                      foregroundImage: AssetImage(AppImages.avatar7Png),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Live Quizzes', style: textTheme.titleLarge),
                        TextButton(onPressed: () {}, child: Text('See all')),
                      ],
                    ),
                  ),

                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset(AppImages.statisticPng),
                          title: Text('Statistics Math Quiz'),
                          subtitle: Text('Math • 12 Quizzes'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.primary,
                          ),
                        ),
                      );
                    },
                  ),

                  Gap(100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
