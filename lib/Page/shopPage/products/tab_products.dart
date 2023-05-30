import 'package:flutter/material.dart';

class tabProducts extends StatefulWidget {
  TabController tabController;
  tabProducts({super.key, required this.tabController});

  @override
  State<tabProducts> createState() => _tabProductsState();
}

class _tabProductsState extends State<tabProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TabBar(
        controller: widget.tabController,
        tabs: [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
        ],
      ),
    );
  }
}
