import 'package:flutter/material.dart';

import '../utils/colors.dart';

// this input text is for validation form
class TextInputForm extends StatelessWidget {
  final TextEditingController inputController;
  final String textLable;
  final String textHint;
  final String? textError;
  final String validatorMessage;
  final bool isPassword;
  final bool autoCorrect;
  final TextInputType? inputType;
  const TextInputForm({
    Key? key,
    required this.inputController,
    required this.textLable,
    required this.textHint,
    this.textError,
    required this.validatorMessage,
    required this.isPassword,
    required this.autoCorrect,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword,
      autocorrect: autoCorrect,
      controller: inputController,
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
          labelText: textLable,
          labelStyle: const TextStyle(fontSize: 15),
          hintText: textHint,
          errorText: textError,
          errorStyle: const TextStyle(color: toPeaceRed),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
      validator: (value) {
        if (value!.isEmpty) {
          return validatorMessage;
        }
        return null;
      },
    );
  }
}
