import 'package:flutter/cupertino.dart';

@immutable
abstract class AddNoteStates{}
class AddNoteInState extends AddNoteStates{}
class AddLoadihgstata extends AddNoteStates{}
class AddSuccessstata extends AddNoteStates{}
class AddFailurstata extends AddNoteStates{
  final String error;

  AddFailurstata(this.error);
}



