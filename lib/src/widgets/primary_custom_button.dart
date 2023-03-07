import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  final Color color;
  final Color inActiveButtonColor;
  final Widget? child;
  final double? width;
  final double borderRadius;
  final double paddingVert;
  final double paddingHoriz;
  final double elevation;

  const PrimaryButton(
      {super.key,
      this.text = "",
      this.width,
      this.onPressed,
      this.elevation = 0,
      //Active Button Color
      required this.color,
      this.child,
      this.borderRadius = 10,
      this.paddingVert = 10.4,
      this.paddingHoriz = 0,
        //Inactive Button Color
      required this.inActiveButtonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            //Inactive Button Colors
            disabledForegroundColor: inActiveButtonColor,
            disabledBackgroundColor: inActiveButtonColor),
        onPressed: onPressed as void Function()?,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: paddingVert, horizontal: paddingHoriz),
          child: (text!.isNotEmpty)
              ? Text(
                  text!,
                  style: buttonText,
                )
              : child,
        ),
        // elevation: 5,
      ),
    );
  }
}

const buttonText = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.white,
    letterSpacing: 1);
