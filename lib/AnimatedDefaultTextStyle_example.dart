import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextStyle style1 = TextStyle(color: Colors.red,fontSize: 42);
  TextStyle style2 = TextStyle(color: Colors.blue,fontSize: 32);

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedDefaultTextStyle(
            style: isSelected ? style1 : style2,
            duration: Duration(seconds: 1),
            child: Text("Deneme"),
          ),
        ),
      ),
    );
  }
}
