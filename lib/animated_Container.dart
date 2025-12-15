import 'package:flutter/material.dart';




class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
child: AnimatedContainer(duration: Durations.medium1 ,
 height: isSelected? 200 :100,
 width: isSelected ? 150:75,
 color: isSelected? Colors.red: Colors.orange,
 curve: Curves.fastOutSlowIn,
 ),

      ),
    );
  }
}