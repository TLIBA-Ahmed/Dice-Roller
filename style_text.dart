import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          //backgroundColor: Color.fromARGB(255, 255, 255, 255),
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.normal,
          shadows: [
            Shadow(color: Colors.red, offset: Offset(0, 8), blurRadius: 10),
            //Shadow(
            //  color: Colors.yellowAccent,
            // offset: Offset(-5, 6),
            // blurRadius: 10)
          ],
          /*decoration: TextDecoration.combine([TextDecoration.underline]),
          decorationStyle: TextDecorationStyle.wavy,
          decorationThickness: 2.1,
          decorationColor: Colors.redAccent,*/
          wordSpacing: 5,
          letterSpacing: 1,
          height: -2),
    );
  }
}
