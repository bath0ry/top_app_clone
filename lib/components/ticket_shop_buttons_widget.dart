import 'package:flutter/material.dart';

class TicketShopButtons extends StatelessWidget {
  final BorderRadiusGeometry borderButton;
  final Color colorButton;
  const TicketShopButtons({
    Key? key,
    required this.borderButton,
    required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 100,
      height: 100,
      decoration: BoxDecoration(borderRadius: borderButton, color: colorButton),
    );
  }
}
