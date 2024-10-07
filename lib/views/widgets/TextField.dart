import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, required this.maxLines, this.onSaved});
   final String hint;
   final int maxLines;
   final void Function(String?)? onSaved;
  @override

  Widget build(BuildContext context) {
    return TextFormField(

      onSaved: onSaved,
      validator: (value)  {
        if(value?.isEmpty ??true){
         return 'Feild is required';
        }else{
          return null;
        }
      },
      

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
