import 'package:flutter/material.dart';

class AnimatedSwticherPage extends StatefulWidget {
  const AnimatedSwticherPage({super.key});

  @override
  State<AnimatedSwticherPage> createState() => _AnimatedSwticherPageState();
}

class _AnimatedSwticherPageState extends State<AnimatedSwticherPage> {
  bool _isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            _isFirst = !_isFirst;
          }),
          child: AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: _isFirst ? const RedContainer() : const BlueContainer(),
          ),
        ),
      ),
    );
  }
}

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, height: 300, width: 300);
  }
}

class RedContainer extends StatelessWidget {
  const RedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, height: 250, width: 250);
  }
}
