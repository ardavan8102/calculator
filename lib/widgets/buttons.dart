import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.color, this.textColor, required this.buttonText, this.buttonTapped});

  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}