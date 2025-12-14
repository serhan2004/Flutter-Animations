import 'package:flutter/material.dart';
class AnimatedCossFadeExamplePage extends StatefulWidget {
  const AnimatedCossFadeExamplePage({super.key});

  @override
  State<AnimatedCossFadeExamplePage> createState() =>
      _AnimatedCossFadeExamplePageState();
}

class _AnimatedCossFadeExamplePageState
    extends State<AnimatedCossFadeExamplePage> {
      bool _isFirst = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isFirst = !_isFirst;
          });
        },
        child: AnimatedCrossFade(
          firstChild: Container(color: Colors.red, height: 250, width: 250),
          secondChild: Container(color: Colors.green, height: 250, width: 250),
          crossFadeState: _isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}
