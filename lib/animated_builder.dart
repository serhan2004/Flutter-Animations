import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen> with TickerProviderStateMixin {
  //* Animasyon için controller tanımladık AnimationControllerden çektik
  late final _controller = AnimationController(vsync: this, duration: const Duration(seconds: 5));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    _controller.repeat();
    return Center(
      child: AnimatedBuilder(animation: _controller,
      // içerisine flutter logosunu koyduk
        child:Container(
          height: 200,
          width: 200,
          child: FlutterLogo(size: 64),
        ),
      
       builder: (context, child) {
        // Rotate ile kendi ekseninde dönmesini sağladık
        return Transform.rotate(
          angle: _controller.value *2.0* pi,
          child: child,
        );
      },),
    );
  }
}