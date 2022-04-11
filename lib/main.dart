import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeTMate(),
    );
  }
}

class HomeTMate extends StatefulWidget {
  @override
  _HomeTMateState createState() => _HomeTMateState();
}

class _HomeTMateState extends State<HomeTMate> {
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebView(initialUrl: "https://www.hometmate.com",
      javascriptMode: JavascriptMode.unrestricted,
      ),
      ),
    );
  }
}


