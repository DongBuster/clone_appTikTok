import 'package:flutter/material.dart';

class offerCustomer extends StatefulWidget {
  const offerCustomer({super.key});

  @override
  State<offerCustomer> createState() => _offerCustomerState();
}

class _offerCustomerState extends State<offerCustomer> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      height: 200,
      width: mq.width - 20,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
  }
}
