import 'package:flutter/material.dart';

class flashSale extends StatefulWidget {
  const flashSale({super.key});

  @override
  State<flashSale> createState() => _flashSaleState();
}

class _flashSaleState extends State<flashSale> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      height: 150,
      width: mq.width - 20,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
  }
}
