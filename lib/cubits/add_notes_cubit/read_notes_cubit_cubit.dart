import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class ReadNotesCubitCubit extends Cubit<ReadNotesCubitState> {
  ReadNotesCubitCubit() : super(ReadNotesCubitInitial());
  List <NoteModel>?notes;
  
  fetchAllCubit() async{
    
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes = notesBox.values.toList();

  
  
  } 
}
