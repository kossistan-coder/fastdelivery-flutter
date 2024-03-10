import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/widgets.dart';

Decoration kdecoration() {
  return BoxDecoration(
    color: kwhite,
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(255, 241, 240, 240),
        blurRadius: 5,
        offset: Offset(0, 5),
      )
    ],
    borderRadius: BorderRadius.circular(15),
  );
}
