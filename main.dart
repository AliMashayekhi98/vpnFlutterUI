import 'package:flutter/material.dart';
import 'package:vpn/screens/home/splash_sceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ali VPN',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

