import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit.dart';
import 'package:notes/cubits/stata.dart';

import '../model/model.dart';
import 'Note_item.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit,NoteStates>(builder: (context,stata){
List<NetworkNote> notes=BlocProvider.of<NoteCubit>(context).note!;
      return ListView.builder(

        itemCount: notes.length,
        itemBuilder: (context,index)=>       Padding(
        padding:  EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(
note:  notes[index],
        ),
      ),);
    });
  }
}