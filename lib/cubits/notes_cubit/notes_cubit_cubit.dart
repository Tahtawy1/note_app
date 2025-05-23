import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesInitial());
  fetchAllNotes() {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(knoteBox);
      emit(NotesSuccses(notes: notesBox.values.toList()));
    } catch (ex) {
      emit(NotesFailure(errMessage: ex.toString()));
    }
  }
}
