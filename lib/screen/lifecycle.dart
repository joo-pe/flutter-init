import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {


  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(show) CodeFactoryWidget(),
              SizedBox(height: 32.0),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      show = !show;
                    });
                  },
                  child: Text('클릭해서 보이기/안보이기')
              )
            ],
          ),
        )
    );
  }
}

class CodeFactoryWidget extends StatefulWidget{
  CodeFactoryWidget({super.key}){
    print('1) stateful constructor');
  }

  @override
  State<CodeFactoryWidget> createState() {
    print('2) stateful creteState');

    return  _CodeFactoryWidgetState();
  }
}

class _CodeFactoryWidgetState extends State<CodeFactoryWidget> {

  bool kDebugMode = true;

  @override
  void initState() {
    if (kDebugMode) {
      print('3) stateful widget initstate');
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}