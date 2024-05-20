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
            SizedBox(
              width: 350,
              child: Text(
                title,
                style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: titleSize),
              ),
            ),
          ],
        ),
        Row(
          children: [
            icon ?? Text(""),
            SizedBox(
              width: 350,
              child: Text(
                subTitle,
                style: TextStyle(
                  fontSize: subSize,
                  color: subColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget center(
      {required final String subTitle,
      required final String title,
      Color? titleColor = kwhite,
      Color? subColor = kwhite,
      double? titleSize,
      double? subSize,
      Icon? icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Padding(
                padding: EdgeInsets.only(left: 6),
              )
            ],
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: titleColor,
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? Text(""),
            SizedBox(
              width: 350,
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: subSize,
                  color: subColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
