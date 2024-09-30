import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/TextField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Customappbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
            SizedBox(
            height: 50,
          ),
          CustomTextfield(
            hint: 'Title',
          ),
            SizedBox(
            height: 16,
          ),
          CustomTextfield(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
