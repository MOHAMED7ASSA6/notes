
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/model/model.dart';

import '../widget/customBar.dart';
import '../widget/custom_app_bar.dart';
import '../widget/editnote.dart';
import '../widget/note_view_app.dart';
import 'note_view.dart';

class EditView extends StatelessWidget {
  const EditView({Key? key, required this.note}) : super(key: key);
final NetworkNote note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:    EditeNote(note: note,),


    );
  }
}
