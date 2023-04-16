import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/model/model.dart';
import 'package:notes/widget/floating.dart';
import 'package:notes/widget/form.dart';


import '../cubits/cubit.dart';
import '../widget/note_view_app.dart';
import '../widget/textfield.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingWidget(),
      body: NotesViewApp(),
    );
  }
}


OutlineInputBorder builder([Color]){
  return
    OutlineInputBorder(  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
  color:Color??Colors.white,
  )
  );


}