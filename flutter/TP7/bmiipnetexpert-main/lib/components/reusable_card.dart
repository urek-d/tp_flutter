import 'dart:ffi';

import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard(
      {required this.largeur,
      required this.couleur,
      required this.containerChild});
  // ignore: prefer_typing_uninitialized_variables
  final largeur;
  // ignore: prefer_typing_uninitialized_variables
  final couleur;

  Widget containerChild;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: widget.containerChild,
        margin: const EdgeInsets.all(10.0),
        height: 200.0,
        width: widget.largeur,
        decoration: BoxDecoration(
          color: widget.couleur,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
