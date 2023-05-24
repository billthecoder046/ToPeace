import 'package:flutter/material.dart';
import 'package:to_peace/utils/sizes.dart';

import '../utils/colors.dart';

class StandardButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const StandardButton(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: toPeaceGreen,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                side: const BorderSide(color: toPeaceGreen),
                textStyle:
                    const TextStyle(color: Colors.white, fontSize: defaultSize),
                elevation: 10.0),
            onPressed: onPressed,
            child: Text(
              text,
              textScaleFactor: 1.0,
              style:
                  const TextStyle(color: toPeaceWhite, fontSize: defaultSize),
            )));
  }
}
