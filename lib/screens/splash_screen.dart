import 'package:animated_splash/animated_splash.dart';
// link for AnimatedSplash() widget package:
// https://pub.dev/packages/animated_splash

import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplash(
        imagePath: 'assets/images/app_icon.jpeg',
        home: MyHomePage(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
