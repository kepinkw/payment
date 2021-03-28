import 'package:flutter/material.dart';
import 'pages/config.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solucionis',
      home: SplashScreen(),
    );
  }
}
