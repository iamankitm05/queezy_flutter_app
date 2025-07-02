import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:queezy/constants/app_colors.dart';
import 'package:queezy/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Queezy',
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          Get.dialog(
            AlertDialog(
              title: Text('Exit App?'),
              content: Text('Are you sure you want to close the app?'),
              actions: [
                ElevatedButton(onPressed: Get.back, child: Text('Cancel')),
                ElevatedButton(
                  onPressed: SystemNavigator.pop,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                  ),
                  child: Text('Exit'),
                ),
              ],
            ),
          );
        },
        child: HomeScreen(),
      ),
    );
  }
}
