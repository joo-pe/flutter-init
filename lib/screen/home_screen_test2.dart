import 'package:flutter/material.dart';

class HomeScreenTest2 extends StatelessWidget {
  const HomeScreenTest2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 64.0,
            ),
            child: Container(
              color: Colors.blue,
              width: 50.0,
              height: 50.0,
            ),
          )
        ),
      )
    );
  }


}