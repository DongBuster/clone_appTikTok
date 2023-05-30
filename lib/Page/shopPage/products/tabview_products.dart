import 'package:flutter/material.dart';

class tabviewProducts extends StatefulWidget {
  TabController tabController;
  tabviewProducts({super.key, required this.tabController});

  @override
  State<tabviewProducts> createState() => _tabviewProductsState();
}

class _tabviewProductsState extends State<tabviewProducts> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(color: Colors.deepOrange),
              Container(color: Colors.green),
              Container(color: Colors.red),
              Container(color: Colors.deepOrange),
            ],
          ),
        )
      ],
    );
  }
}
