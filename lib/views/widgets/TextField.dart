import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key, required this.hint,  this.maxLines=1});
   final String hint;
   final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kprimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
