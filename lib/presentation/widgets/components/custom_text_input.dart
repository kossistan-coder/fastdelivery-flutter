import 'package:fastdelivery/presentation/entities/input_type.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextInput(
    {required String label,
    required InputType inputType,
    required String? Function(String?)? validate,
    bool obscuretext = false,
    Function()? toggleObscureText,
    Function(String?)? onChanged,
    Future<void>? Function()? onTap,
    int? limit,
    String? initialValue,
    Color? borderColor = ksale,
    TextEditingController? txtController}) {
  return TextFormField(
    onTap: onTap,
    keyboardType: inputType == InputType.tel
        ? TextInputType.phone
        : inputType == InputType.numeric
            ? TextInputType.number
            : TextInputType.text,
    inputFormatters: [
      new LengthLimitingTextInputFormatter(limit),
    ],
    //maxLength: inputType == "tel"?8:null,
    obscureText: inputType == InputType.password ? obscuretext : false,
    controller: txtController,
    validator: validate,
    onChanged: onChanged,
    initialValue: initialValue,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: (borderColor != null) ? borderColor : kblueSale, width: 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(7.5),
        ),
      ),
      suffixIcon: inputType == InputType.password
          ? Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: IconButton(
                onPressed: toggleObscureText,
                icon: obscuretext
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            )
          : null,
      filled: true,
      fillColor: kwhite,
      hintText: label,
      contentPadding: const EdgeInsets.only(
        top: 5,
        left: 23,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
      ),
    ),
  );
}

class Validator {
  static email(String? value) {
    RegExp exp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty) {
      return null;
    } else {
      if (!exp.hasMatch(value)) {
        return "Email invalide";
      }
    }
    return null;
  }

  static input(String? value, int? length) {
    if (value == null || value.isEmpty) {
      return "Veuillez remplir le champ s'il vous plait !";
    } else if (value.length < length!) {
      return "Ce champ doit contenir au moins " +
          length.toString() +
          " caractères";
    }

    return null;
  }

  static empty(String? value, int? length) {
    return null;
  }

  static confirmation(String? value, String password, int length) {
    if (value == null || value.isEmpty) {
      return "Veuillez remplir le champ s'il vous plait !";
    } else {
      if (value.length < length) {
        return "Ce champ doit contenir au moins " +
            length.toString() +
            " caractères";
      } else if (value != password) {
        return "Votre mot de passe ne correspond pas ";
      }
    }

    return null;
  }

  static bool isNumeric(String s) {
    if (s == null) {
      return false;
    }

    return double.tryParse(s) != null;
  }

  static phoneNumber(String? value, int length) {
    if (value == null || value.isEmpty) {
      return "Veuillez remplir le champ s'il vous plait !";
    } else {
      if (value.trim().length < length || !Validator.isNumeric(value.trim())) {
        return "Numéro de telephone invalide";
      }
    }

    return null;
  }

  static checkNumeric(String input) {
    final intValue = int.tryParse(input);
    final doubleValue = double.tryParse(input);
    bool num = intValue != null || doubleValue != null;
    if (num == false) {
      return "Saisissez un chiffre";
    }
    return null;
  }
}
