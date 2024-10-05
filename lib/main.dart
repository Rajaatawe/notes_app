import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/simple_bloc_observer.dart';

void main() async {
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //+
      providers: [
        
        //+
        BlocProvider(create: (context) => AddNotesCubit()), //+
      ], //+
      child: MaterialApp(
        //+
        theme: ThemeData(
          //+
          brightness: Brightness.dark, //+
          //  fontFamily:'lib/assets/fonts/fa-regular-400.ttf' ,//+
        ), //+
        debugShowCheckedModeBanner: false, //+
        home: const NotesView(), //+
      ), //+
    ); //+/-
  } //-
}
