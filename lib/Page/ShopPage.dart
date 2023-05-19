import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:clone_tiktok/BuildApp/FooterApp.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SlideTransitionScreen(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Text(
          'hello',
          style: TextStyle(fontSize: 18, color: Colors.amber),
        )),
      ),
    );
  }
}
