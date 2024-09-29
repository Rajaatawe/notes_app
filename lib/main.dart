import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(brightness: Brightness.dark,
      // fontFamily: ,
      
      ),
      
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
