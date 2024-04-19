import 'package:flutter/material.dart';

class numericButton extends StatelessWidget {
  const numericButton({
    super.key, 
    required this.label, 
    required this.backGroundColor,
    required this.showBorder, 
    this.borderColor = Colors.transparent, 
    this.width = 80, 
    this.height = 80,
  });

  final String label;
  final Color backGroundColor;
  final bool showBorder;
  final Color borderColor;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {}, 
        child: Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backGroundColor,
          side: showBorder ? BorderSide(color: borderColor): BorderSide(color: Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}