import 'package:clone_tiktok/Animations/AnimationsPage.dart';
import 'package:clone_tiktok/Page/shopPage/flashSale.dart';
import 'package:clone_tiktok/Page/shopPage/headerShop.dart';
import 'package:clone_tiktok/Page/shopPage/offerCustomer.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool isScrolling = false;
  @override
  Widget build(BuildContext context) {
    return SlideTransitionScreen(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Color(0xfff1f1f1)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              headerShop(
                searchSuggestions: 'tai nghe m10',
              ),
              Expanded(
                  child: Stack(
                children: [
                  NotificationListener<ScrollNotification>(
                    onNotification: (scrollNotification) {
                      setState(() {
                        isScrolling = scrollNotification.metrics.pixels > 0;
                      });
                      return false;
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          offerCustomer(),
                          const SizedBox(height: 15),
                          flashSale(),
                          flashSale(),
                          flashSale(),
                          flashSale(),
                          flashSale(),
                          flashSale(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 0,
                    child: Opacity(
                        opacity: isScrolling ? 0.5 : 1,
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,
                        )),
                  ),
                ],
              )),
              const SizedBox(height: 62)
            ]),
      ),
    );
  }
}
