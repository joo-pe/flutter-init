import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5]
          .map(
              (e) => Image.asset(
                  'asset/image/$e.jpeg', fit: BoxFit.cover,))
          .toList(),
    )
    );
  }

}
