import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget digitsInput({
  required double height,
  required double width,
  int limit = 1,
  required BuildContext context,
  bool read = false,
  String? initialValue,
  Function(dynamic)? function,
  TextEditingController? controller,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      controller: controller,
      readOnly: read,
      style: Theme.of(context).textTheme.headline6,
      onChanged: (value) {
        if (function != null) {
          function(value);
        }
        if (value.length == limit) {
          FocusScope.of(context).nextFocus();
        }
      },
      decoration:
          InputDecoration(hintText: initialValue, border: OutlineInputBorder()),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(limit),
        FilteringTextInputFormatter.digitsOnly
      ],
    ),
  );
}
