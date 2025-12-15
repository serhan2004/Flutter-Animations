import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {

      bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: GestureDetector(
        //Sizedbox içerisi boş olduğu için Gesture detector çalışmıyordu
        //Bu parametre sayesinde çalışabilir yaptık
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() { 
            isSelected = !isSelected;
          });
          debugPrint("Butona Tıklanıldı");
        },
        child: AnimatedPhysicalModel(
          shape: BoxShape.rectangle,
          borderRadius: isSelected ? BorderRadius.circular(8) : BorderRadius.circular(0),
          elevation: isSelected ? 100 : 5,
          curve: Curves.fastOutSlowIn,
          color: isSelected? Colors.blue: Colors.red,
          shadowColor: Colors.grey,
          duration: Duration(seconds: 1),
          child: SizedBox(height: 250, width: 250),
        ),
      ),
    );
  }
}
