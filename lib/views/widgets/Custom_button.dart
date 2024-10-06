import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
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
        ),
        child: Center(
            child: isLoading ?SizedBox(
              height: 24,
              width: 24,
              child: const CircularProgressIndicator(color: kprimaryColor,)):
             const Text(
          'Add',
          style: TextStyle(color: kprimaryColor),
        )),
      ),
    );
  }
}
