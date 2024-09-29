import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/Note_Item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children:[
          SizedBox(height: 50 ,),
           Customappbar(),
           NoteItem(),
          //  ListView.builder(
          //   itemBuilder:(context),
          
          //  ),
        ],
      ),
    );
  }
}