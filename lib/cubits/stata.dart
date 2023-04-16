import 'package:flutter/cupertino.dart';
import 'package:notes/model/model.dart';

@immutable
abstract class NoteStates{}
class NoteInState extends NoteStates{}
class Loadihgstata extends NoteStates{}
class Successstata extends NoteStates{
}
class Failurstata extends NoteStates{
  final String error;

  Failurstata(this.error);
}



