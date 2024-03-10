import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double defaultSize = 10;

class UiHeader {
  static Widget board(
      {required final String subTitle,
      required final String title,
      Color? titleColor = kwhite,
      Color? subColor = kwhite,
      double? titleSize,
      double? subSize,
      Icon? icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Padding(
                padding: EdgeInsets.only(left: 6),
              )
            ],
            Text(
              title,
              style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: titleSize),
            ),
          ],
        ),
        Row(
          children: [
            icon ?? Text(""),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: subSize,
                color: subColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget center({
    required final String subTitle,
    required final String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
              color: kblack,
              fontSize: defaultSize + 10,
              fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: defaultSize,
            color: Color.fromARGB(255, 88, 88, 88),
          ),
        ),
      ],
    );
  }
}
