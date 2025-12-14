import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
      bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Center(
        child: Container(color: Colors.red,
        height: 250,
        width: 250,
        child:AnimatedAlign(
          alignment: isSelected ?  Alignment.bottomLeft :Alignment.topRight  ,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(
            size: 64,
          ),
        )
        
        
        ),
      ),
    );
  }
}


