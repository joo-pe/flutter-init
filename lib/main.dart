import 'package:flutter/material.dart';
import 'package:hello_world/screen/home_screen.dart';
import 'package:hello_world/screen/home_screen_test2.dart';

void main() {
  /// Flutter app 이 실행할 준비가 되어 있을 때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      MaterialApp(
          home: HomeScreen(),
      ),
  );
}

