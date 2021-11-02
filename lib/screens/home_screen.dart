import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import '../models/Product.dart';
import 'product_card.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  static const defaultPadding = 20.0;
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: GridView.builder(
        itemCount: demoProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: demoProducts[index],
          press: () {},
        ),
      ),
    );
  }
}
