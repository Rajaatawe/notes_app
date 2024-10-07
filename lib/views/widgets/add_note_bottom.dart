import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/Custom_button.dart';
import 'package:note_app/views/widgets/TextField.dart';
import 'package:note_app/views/widgets/colors_list_view.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    String? title;
    String? subtitle;
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 10,
          ),
        const  ColorsListView(),
          const SizedBox(
            height: 70,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNotesLoading ? true : false,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();

                var currentdate=DateTime.now();
                var formattedCurrentDate=DateFormat('dd-mm-yyyy').format(currentdate);

                  var notemodel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNotesCubit>(context).addNotes(notemodel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
