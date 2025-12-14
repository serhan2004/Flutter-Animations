import 'package:flutter/material.dart';
class AlignTransitionExampleApp extends StatelessWidget {
  const AlignTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AlignTransitionExample());
  }
}

//Birinci yapı ne işe yarar?
class AlignTransitionExample extends StatefulWidget {
  const AlignTransitionExample({super.key});

  @override
  State<AlignTransitionExample> createState() => _AlignTransitionExampleState();
}

//ikinci yapı ne işe yarar?
class _AlignTransitionExampleState extends State<AlignTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 5),
  )..repeat(reverse: true);

  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColoredBox(
          color: Colors.white,
          child: AlignTransition(alignment: _animation, child: Padding(padding: EdgeInsetsGeometry.all(8), child: FlutterLogo(size: 32,),)),
        ),
      ),
    );
  }
}
