import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchallnotes() {
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);

      emit(Notessuccess(notesBox.values.toList()));
    } catch (e) {
      emit(Notesfailure(e.toString()));
    }
  }
}
