import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CocoCart Seller-Side App",
      home: SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
