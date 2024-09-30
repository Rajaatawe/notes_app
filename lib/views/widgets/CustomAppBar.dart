import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Search_button.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.title, required this.icon});
   final String title;
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
            Text(title,style: TextStyle(color: Colors.white,fontSize: 28),),
            Spacer(),
     SearchButton(icon: icon,),
    ]
    );
  }
}