import 'package:flutter/material.dart';
import 'dart:math';

///import 'style_text.dart';
import 'dart:developer' as dev;
//import 'mycustom_container.dart';
//import 'main.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var image = 'images/dice-1.png';

  void rolldice() {
    var dice = Random().nextInt(6) + 1;
    setState(() {
      dev.log("The button is clicked !");
    });
    image = 'images/dice-$dice.png';
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('images/dice-1.png', width: 90),
        Image.asset('images/dice-2.png', width: 90),
        Image.asset('images/dice-3.png', width: 90)
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/dice-4.png', width: 90),
          Image.asset('images/dice-5.png', width: 90),
          Image.asset('images/dice-6.png', width: 90)
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*TextButton(
                  onPressed: () => log("clicked 1"),
                  child: const Text('Click Here !',
                      style: TextStyle(fontSize: 25)),
                ),
                OutlinedButton(
                  onPressed: () => log("clicked 2"),
                  child: const Text('Click Here !',
                      style: TextStyle(fontSize: 25)),
                ),*/

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 24)),
            onPressed: rolldice,
            label: const Text('Roll Dice', style: TextStyle(fontSize: 25)),
            icon: const Icon(Icons.ads_click),
          )
        ],
      ),
      const SizedBox(height: 25),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Image.asset(image, width: 120)])
    ]);
  }
}
