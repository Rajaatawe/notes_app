import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/read_notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/Note_Item.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubitCubit, ReadNotesCubitState>(
      builder: (context, state) {
        
           List<NoteModel> notes=BlocProvider.of<ReadNotesCubitCubit>(context).notes??[];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: EdgeInsets.zero,
                child: ListView.builder(
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      return NoteItem();
                    }), 
              ),
            ),
          );
        
      },
    );
  }
}
