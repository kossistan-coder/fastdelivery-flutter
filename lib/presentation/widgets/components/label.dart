import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';

import 'package:flutter/cupertino.dart';

Widget circularIconLabel({
  required final Color color,
  required final Icon icon,
  final Color borderColor = ksale,
  final double padding = 0,
}) {
  return Container(
    width: 40,
    height: 40,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
      ],
    ),
  );
}

Widget circularLabel({
  required final Color color,
  required final String text,
  required final Color textColor,
}) {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(50))),
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget rectangleLabel({
  required final Color color,
  required final String text,
  required final Color textColor,
}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ),
  );
}

Widget rectangleIconLabel(
    {required final Color color,
    required final Icon icon,
    Color borderColor = kbluepur}) {
  return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          )),
      child: icon);
}

Widget rectangleIconTextLabel(
    {required final Color color,
    required final String text,
    Icon? icon,
    Color borderColor = kbluepur}) {
  return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          icon ?? Text(""),
          Text(
            text,
            style: TextStyle(
              color: borderColor,
            ),
          ),
        ],
      ));
}
