
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit.dart';
import 'package:notes/model/model.dart';
import 'package:notes/widget/colors_item.dart';
import 'package:notes/widget/customBar.dart';

import '../Views/note_view.dart';
import '../const.dart';
import '../cubit/cubit.dart';
import 'custom_app_bar.dart';

class EditeNote extends StatefulWidget {
  const EditeNote({Key? key, required this.note}) : super(key: key);
  final NetworkNote note;
  @override
  State<EditeNote> createState() => _EditeNoteState();
}

class _EditeNoteState extends State<EditeNote> {


 String ?title,content;


  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(title: 'Edit Note',icon: Icons.text_rotation_angledown,onPressed: (){
            widget.note.title=title ??widget.note.title;
            widget.note.subtitle=content ??widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchAllNote();
            Navigator.pop(context);

          },),
          SizedBox(height: 100),
          TextField(
onChanged: (value){
  title=value;
},
            decoration: InputDecoration(
              hintText: widget.note.title,
              hintStyle:const TextStyle(
                color: Colors.blue,
              ),
              border:builder(),
              enabledBorder: builder(),
              focusedBorder: builder(Colors.blue),

            ),
          ),
          SizedBox(height: 15,),
          TextField(
            onChanged: (value){
              content=value;
            },
            maxLines: 3,
            decoration: InputDecoration(
              hintText: widget.note.subtitle,
              hintStyle:const TextStyle(
                color: Colors.blue,
              ),
              border:builder(),
              enabledBorder: builder(),
              focusedBorder: builder(Colors.blue),

            ),
          ),
          SizedBox(height: 10,),
          EditeColor(note: widget.note),


        ],
      ),
    );
  }
}
class EditeColor extends StatefulWidget {
  const EditeColor({Key? key, required this.note}) : super(key: key);
final NetworkNote note;
  @override
  State<EditeColor> createState() => _EditeColorState();
}

class _EditeColorState extends State<EditeColor> {
 late  int currentindex;
@override
  void initState() {
  currentindex=colors.indexOf(Color(widget.note.Color));
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){
              currentindex=index;
            widget.note.Color=colors[index].value;
              setState(() {

              });
            },
            child: ColorItem(
              color:colors[index],
              isActive: currentindex==index,
            ),
          )),
    );
  }
}

