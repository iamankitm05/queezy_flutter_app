import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text('Madelyn Dias')],
          ),
          actions: [
            CircleAvatar(

            )
          ],
        ),
      ],
    );
  }
}
