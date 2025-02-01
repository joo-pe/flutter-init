import 'package:flutter/material.dart';

class NumberToImage extends StatelessWidget {
  final int number;

  const NumberToImage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: number
          .toString()
          .split('')
          .map(
            (number) =>
            Image.asset(
              'asset/image/1.jpeg',
              width: 50.0,
              height: 70.0,
            ),
      ).toList(),
    );
  }
}