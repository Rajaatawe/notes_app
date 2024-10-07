import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit_cubit.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/NotesListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllCubit();
    super.initState();
  }
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
