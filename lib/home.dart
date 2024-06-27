import 'package:flutter/material.dart';
import 'package:product_app/app_bar.dart';
import 'package:product_app/products.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappBar(context, 'Home'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Products(),
      ),
    );
  }
}
