import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit_cubit.dart';
import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.amber,
          backgroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
