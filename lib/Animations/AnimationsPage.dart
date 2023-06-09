import 'package:clone_tiktok/provider/GlobalState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlideTransitionScreen extends StatefulWidget {
  late Widget child;

  SlideTransitionScreen({super.key, required this.child});

  @override
  State<SlideTransitionScreen> createState() => _SlideTransitionScreenState();
}

class _SlideTransitionScreenState extends State<SlideTransitionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var test = Provider.of<GlobalState>(context, listen: false)
        .isAnimationToLeftToRight;
    return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(test ? 1.0 : -1.0, 0.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.ease,
        )),
        child: widget.child);
  }
}
