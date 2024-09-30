import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Note_Item.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Padding(
          padding: EdgeInsets.zero,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return NoteItem();
              }),
        ),
      ),
    );
  }
}
