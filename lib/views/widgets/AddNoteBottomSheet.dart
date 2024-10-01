import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_button.dart';
import 'package:note_app/views/widgets/TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const add_note_bottom_sheet_form();
  }
}

class add_note_bottom_sheet_form extends StatefulWidget {
  const add_note_bottom_sheet_form({
    super.key,
  });
  @override
  State<add_note_bottom_sheet_form> createState() =>
      _add_note_bottom_sheet_formState();
}

class _add_note_bottom_sheet_formState extends State<add_note_bottom_sheet_form> {

  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(

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
              onSaved: (value){
                subtitle=value;
              },
              hint: 'content',
              maxLines: 10,
            ),
            const SizedBox(
              height: 70,
            ),
             CustomButton(onTap: (){
               if(formkey.currentState!.validate()){
                formkey.currentState!.save();
               }else{
               autovalidateMode =AutovalidateMode.always;
                setState(() {
                  
                });
               }
            },),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
