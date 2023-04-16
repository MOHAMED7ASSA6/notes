import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/cubit.dart';
import 'package:notes/model/model.dart';

import '../Views/editview.dart';
import 'editnote.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
final NetworkNote note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditView(
          note: note,
        )));
      },
      child: Container(
padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(note.Color),
          borderRadius: BorderRadius.circular(16),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subtitle,style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20),),
              ),
              trailing: IconButton(
                onPressed: (){
                  note.delete();

                  BlocProvider.of<NoteCubit>(context).fetchAllNote();
                }, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.data,style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}