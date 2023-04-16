import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/cubits/stata.dart';

import '../cubit/stata.dart';
import '../model/model.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInState());
  List<NetworkNote>?note;

fetchAllNote(){

    var notesbox=Hive.box<NetworkNote>('note');
  note =notesbox.values.toList();
  emit(Successstata());


}
}