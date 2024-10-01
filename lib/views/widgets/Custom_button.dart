import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent,
       borderRadius: BorderRadius.circular(30),

    ),child: Text('Add',style: TextStyle(color: Colors.brown),),
    

    );
  }
}