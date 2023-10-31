import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomizenumber = Random();
  var currentDiceImage = 2;
  void rollDice() {
    setState(() {
      currentDiceImage = randomizenumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/pics/dice-$currentDiceImage.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: const Color.fromARGB(255, 25, 14, 146),
                textStyle: const TextStyle(fontSize: 30)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
