import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class ReadNotesCubitCubit extends Cubit<ReadNotesCubitState> {
  ReadNotesCubitCubit() : super(ReadNotesCubitInitial());

  
}
