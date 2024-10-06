import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class ReadNotesCubitCubit extends Cubit<ReadNotesCubitState> {
  ReadNotesCubitCubit() : super(ReadNotesCubitInitial());
  
  fetchAllCubit() async{
      emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes = notesBox.values.toList();

      emit(NotesSuccess( notes));
    } catch (e) {
      emit(NotesFailure(errorMessage: '$e.toString'));
  }
  } 
}
