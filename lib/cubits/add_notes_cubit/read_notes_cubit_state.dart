part of 'read_notes_cubit_cubit.dart';

@immutable
abstract class ReadNotesCubitState {}

class ReadNotesCubitInitial extends ReadNotesCubitState {}

class NotesInitial extends ReadNotesCubitState {}

class NotesLoading extends ReadNotesCubitState {}

class NotesSuccess extends ReadNotesCubitState {
final  List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends ReadNotesCubitState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}
