import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Customappbar(
            title: 'Notes',
            icon: Icons.search,
          ),

          Expanded(child: Noteslistview())
          //  ListView.builder(
          //   itemBuilder:(context),

          //  ),
        ],
      ),
    );
  }
}
