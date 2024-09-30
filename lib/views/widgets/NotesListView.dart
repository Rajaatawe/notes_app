import 'package:flutter/material.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ListView.builder(itemCount: 10,itemBuilder: (context,index){
        return NoteItem();
      }),
    );
  }
}