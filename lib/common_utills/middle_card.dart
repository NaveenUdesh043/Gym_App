import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/common_utills/const.dart';

class MiddleCard extends StatelessWidget {
  final String? number;
  final String? text;
  MiddleCard({
    this.number,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: AppColors.white),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text.toString(),
              style: TextStyle(color: AppColors.black.withOpacity(0.5)),
            )
          ],
        ),
      ),
    );
  }
}