import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {super.key,
      required this.icon,
      required this.onPress,
      this.color = const Color(0XFF4C4F5E)});
  final IconData icon;
  final Function onPress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        onPress();
      },
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      fillColor: color,
    );
  }
}
