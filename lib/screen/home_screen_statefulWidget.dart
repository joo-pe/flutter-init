import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  if(color == Colors.blue){
                    color = Colors.red;
                  }else if(color == Colors.red){
                    color = Colors.blue;
                  }
                  setState(() {

                  });
                },
                child: Text(
                  '색상 변경!',
                ),
            ),
            SizedBox(height: 32.0,),
            Container(
              width: 50.0,
              height:  50.0,
              color: color,
            )
          ]
        )
      )
    );
  }
}