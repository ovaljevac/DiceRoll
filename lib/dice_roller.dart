import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState  extends State<DiceRoller> {
  final randomizer = Random();  
  int activeDiceNumber = 2;
  
  void rollDice() {
    setState(() {
      activeDiceNumber = randomizer.nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "images/dice-$activeDiceNumber.png", width: 200,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )
                  ),
                  onPressed: rollDice,
                  child: const Text("Roll dice"),
                  
                ) 
              ],  
          );
  }
}