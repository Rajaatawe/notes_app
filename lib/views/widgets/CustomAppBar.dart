import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Search_button.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
            Text('Notes',style: TextStyle(color: Colors.white,fontSize: 28),),
            Spacer(),
     SearchButton(),
    ]
    );
  }
}