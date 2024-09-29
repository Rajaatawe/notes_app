import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Customappbar()
      ],
    );
  }
}