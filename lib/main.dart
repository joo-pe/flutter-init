import 'package:flutter/material.dart';
import 'package:hello_world/screen/home_screen.dart';
// import 'package:hello_world/screen/inweb_screen.dart';

void main() {
  /// Flutter app 이 실행할 준비가 되어 있을 때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      MaterialApp(
        theme: ThemeData(
          fontFamily: '42dot',
          textTheme: TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'dart',
              fontSize: 80.0
            ),
            displayMedium: TextStyle(
              color: Colors.white,
              fontSize: 50.0
            ),
            bodyLarge: TextStyle(
              color: Colors.white,
              fontSize: 30.0
            ),
            bodyMedium: TextStyle(
                color: Colors.white,
                fontFamily: 'Quicksand',
                fontSize: 20.0
            ),
          ),
        ),
        home: HomeScreen(),
      ),
  );
}

