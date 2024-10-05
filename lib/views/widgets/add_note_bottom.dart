import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom_button.dart';
import 'package:note_app/views/widgets/TextField.dart';

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
        );
  }
}