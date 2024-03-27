import 'package:flutter/material.dart';

import '../utills/colours.dart';



enum RoundBtn { bgGradient, bgSGradient , textGradient }

class RoundBtnn extends StatelessWidget {
  final String topic;
  final double fontSize;
  final double elevation;
  final RoundBtn b_type;
  final VoidCallback onPressed;
  final FontWeight fontWeight;

  const RoundBtnn(
      {
        super.key,
        required this.topic,
        this.b_type = RoundBtn.bgGradient,
        this.fontSize = 16,
        this.elevation = 1,
        this.fontWeight= FontWeight.w700,
        required this.onPressed
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: b_type == RoundBtn.bgSGradient ? PageColor.secondaryG :  PageColor.primaryG,
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: b_type == RoundBtn.bgGradient ||  b_type == RoundBtn.bgSGradient
              ? const [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 0.5,
                offset: Offset(0, 0.5),
            ),
          ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
        ),
        textColor: PageColor.primaryColor1,
        minWidth: double.maxFinite,
        elevation: b_type == RoundBtn.bgGradient ||  b_type == RoundBtn.bgSGradient ? 0 : elevation,
        color: b_type == RoundBtn.bgGradient ||  b_type == RoundBtn.bgSGradient
            ? Colors.transparent
            : PageColor.white,
        child: b_type == RoundBtn.bgGradient ||  b_type == RoundBtn.bgSGradient
            ? Text(topic,
            style: TextStyle(
                color: PageColor.black,
                fontSize: fontSize,
                fontWeight: fontWeight))
            : ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
                colors: PageColor.primaryG,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)
                .createShader(
                Rect.fromLTRB(0, 0, bounds.width, bounds.height
                ),
            );
          },
          child: Text(topic,
              style: TextStyle(
                  color:  PageColor.primaryColor1,
                  fontSize: fontSize,
                  fontWeight: fontWeight
              ),
          ),
        ),
      ),
    );
  }
}
