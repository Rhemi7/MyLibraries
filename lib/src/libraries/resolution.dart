import 'package:flutter/material.dart';

double screenHeight(
    BuildContext context, { double percent = 1}) =>
    ((MediaQuery.of(context).size.height) * percent);

double screenWidth(
    BuildContext context, { double percent = 1}) => ((MediaQuery.of(context).size.width) * percent);

double textSize(BuildContext context, double textSize) {
  var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
  if (isPortrait) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (screenHeight / 825) * textSize;
  } else {
    double screenHeight = MediaQuery.of(context).size.width;
    return textSize / screenHeight;
  }
}