import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height - 100,
      color: Colors.white,
      child: Text(
        'hhh',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
