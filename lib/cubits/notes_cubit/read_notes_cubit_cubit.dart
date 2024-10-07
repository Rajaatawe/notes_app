import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List <NoteModel>?notes;
  
  fetchAllCubit() {
    
      var notesBox = Hive.box<NoteModel>(kNotesBox);
     notes = notesBox.values.toList();
     emit(NotesSuccess());
  
  
  } 
}
