import 'package:flutter/material.dart';
import 'package:queezy/screens/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Queezy',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
