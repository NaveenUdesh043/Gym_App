import 'package:flutter/material.dart';

class smallIconButton extends StatelessWidget {
  final Icon? icon;
  smallIconButton({
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: icon,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
    );
  }
}