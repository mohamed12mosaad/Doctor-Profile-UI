import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    this.bdColor = Colors.indigoAccent,
    this.width = double.infinity,
    this.height = 50,
    this.textColor = Colors.white, 
    required this.onPressed,
  });
  final String text;
  final Color bdColor;
  final double width;
  final double height;
  final Color textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bdColor,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 16, color: textColor)),
      ),
    );
  }
}

