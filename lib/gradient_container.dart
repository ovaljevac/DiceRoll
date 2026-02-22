import "package:flutter/material.dart";
import "dice_roller.dart";

class GradientContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;

  const GradientContainer(this.startColor, this.endColor, {super.key});

  

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [startColor, endColor],
            ),
          ),
           child: Center(
            child: DiceRoller()
            )
        );
  }
}