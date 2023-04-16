import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Views/note_view.dart';

class textfiled extends StatelessWidget {
  const textfiled({Key? key, this.onsaved, required this.title,  this.mixline=1}) : super(key: key);
  final void Function(String?)? onsaved;
  final String title;
  final int mixline;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      
      maxLines:mixline ,
      validator: (value){
        if(value?.isEmpty ??true){
          return 'filed is requerd';
        }
      },
      onSaved: onsaved,

      decoration: InputDecoration(
        hintText: title,
        hintStyle:const TextStyle(
          color: Colors.blue,
        ),
        border:builder(),
        enabledBorder: builder(),
        focusedBorder: builder(Colors.blue),

      ),
    );
  }
}
