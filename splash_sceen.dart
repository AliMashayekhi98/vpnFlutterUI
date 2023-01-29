import  'package:flutter/material.dart';
import 'package:vpn/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key ? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds : 3 ),(){
    Navigator.push(
    context, MaterialPageRoute(builder : (context ) =>HomeScreen()));
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
            "assets/logo/logo.png",
            height: 50,
            width: 50
        ),
      ),
    );
  }
}
