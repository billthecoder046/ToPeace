import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController inputController;
  final String textLable;
  final String textHint;
  final bool isPassword;
  const TextInput({
    Key? key,
    required this.inputController,
    required this.textLable,
    required this.textHint,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      autocorrect: isPassword == false ? true : false,
      controller: inputController,
      decoration: InputDecoration(
          labelText: textLable,
          hintText: textHint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
    );
  }
}
