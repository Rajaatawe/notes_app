import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(note:note ,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(note.subTitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 18)),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllCubit();
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 12),
                child: Text(
                  note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
