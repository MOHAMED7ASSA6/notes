import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/cubit/stata.dart';

import '../cubits/stata.dart';
import '../model/model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInState());
Color color =   Color(0xff96BDC6);
     AddNote(NetworkNote not)async{
   not.Color=color.value;
  emit(AddLoadihgstata());
  try{
    var notesbox=Hive.box<NetworkNote>('note');
    emit(AddSuccessstata());
   await notesbox.add(not);

  }catch(e){
    AddFailurstata(e.toString());
  }
}
}