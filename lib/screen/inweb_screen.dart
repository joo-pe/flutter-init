import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../const/colors.dart';

// final homeUrl = Uri.parse('https://rnt-runnote-front.vercel.app');
final homeUrl = Uri.parse('https://www.credit-note.co.kr/login');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Jaden Factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
