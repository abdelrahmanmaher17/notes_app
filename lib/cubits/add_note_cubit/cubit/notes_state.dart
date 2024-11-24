part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitial extends NotesState {}

class Notesloading extends NotesState {}

class Notessuccess extends NotesState {
  final List<NoteModel> notes;
  Notessuccess(this.notes);
}

class Notesfailure extends NotesState {
  final String errMessage;
  Notesfailure(this.errMessage);
}
