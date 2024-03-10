import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle defaultTextStyle(
    {Color color = kwhite,
    double size = 18,
    FontStyle font = FontStyle.normal,
    FontWeight fweight = FontWeight.normal}) {
  return TextStyle(
      color: color, fontSize: size, fontStyle: font, fontWeight: fweight);
}

BoxShadow defaultShadow() {
  return const BoxShadow(
    color: Color.fromARGB(255, 241, 240, 240),
    blurRadius: 5,
    offset: Offset(0, 5),
  );
}
