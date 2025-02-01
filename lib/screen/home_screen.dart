import 'package:flutter/material.dart';
import 'package:hello_world/component/number_to_image.dart';
import 'package:hello_world/const/colors.dart';
import 'package:hello_world/screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ///제목과 아이콘 버튼
                _Header(onPressed: onSettingIconPressed),

                ///숫자
                _Body(
                  numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                ),

                ///버튼
                _Footer(),
              ],
            ),
          ),
        ));
  }

  onSettingIconPressed() {
    print('1');
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return SettingScreen();
      }),
    );
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;

  const _Header({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤숫자 생성기',
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
        IconButton(
          color: redColor,
          onPressed: onPressed,
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers;

  const _Body({super.key, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers
            .map(
              (e) => NumberToImage(
                number: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      child: Text('생성하기'),
    );
  }
}
