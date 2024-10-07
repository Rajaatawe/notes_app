import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit_cubit.dart';
import 'package:note_app/views/widgets/add_note_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return add_note_bottom_sheet_form();
  }
}

class add_note_bottom_sheet_form extends StatefulWidget {
  add_note_bottom_sheet_form({
    super.key,
  });

  @override
  State<add_note_bottom_sheet_form> createState() =>
      _add_note_bottom_sheet_formState();
}

class _add_note_bottom_sheet_formState
    extends State<add_note_bottom_sheet_form> {
   @override
            Widget build(BuildContext context) {
              return BlocProvider(
                create: (context) => AddNotesCubit(),
                child: BlocConsumer<AddNotesCubit, AddNotesState>(
                  listener: (context, state) {
                    if(state is AddNotesFailure){
                  }
                    if (state is AddNotesSuccess){
                      BlocProvider.of<NotesCubit>(context).fetchAllCubit();
                      Navigator.pop(context);
                    }
                  },
                  builder: (context, state) {
                    return AbsorbPointer(
                      absorbing: state is AddNotesLoading ? true : false,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: SingleChildScrollView(child: const AddNoteForm()),
                      ),
                    );
                  },
                ),
              );
            }
    }
