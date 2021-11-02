import 'package:flutter/material.dart';

import 'home_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  // Function returning a custom button widget
  // tapHolder parameter function passed for onPressed
  Widget button({@required String buttonText, @required Function tapHolder}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ElevatedButton(
        onPressed: tapHolder,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset(
                  'assets/images/app_icon.jpeg',
                  colorBlendMode: BlendMode.softLight,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            button(
              buttonText: "SELL",
              tapHolder: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
            ),
            SizedBox(
              height: 20,
            ),
            button(
              buttonText: "PRESELL",
              tapHolder: () {},
            ),
          ],
        ),
      ),
    );
  }
}
