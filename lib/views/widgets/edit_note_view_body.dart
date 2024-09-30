import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Customappbar(title:'Edit Note' ,icon: Icons.check,)
        ],
      ),
    );
  }
}