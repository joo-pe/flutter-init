import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../const/colors.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Jaden Factory'),
          centerTitle: true,
        ),
        body: WebViewWidget(controller: controller),
      );
  }
}
