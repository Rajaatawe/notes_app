import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
         borderRadius: BorderRadius.circular(30),
      
      ),child: Center(child: Text('Add',style: TextStyle(color:kprimaryColor),)),
      
    
      ),
    );
  }
}
