import 'package:flutter/material.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';
import 'package:splash_screen_rive/src/pages/home/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Flutter - Rive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen.navigate(
        name: 'assets/example__download_icon.riv',
        next: (context) => HomePage(title: 'Splash Screen Flutter - Rive'),
        until: () => Future.delayed(Duration(seconds: 2)),
        startAnimation: 'Complete',
        backgroundColor: Color(0xFF357ED4),
      ),
    );
  }
}
