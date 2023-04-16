import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit.dart';
import 'package:notes/widget/NoteList.dart';
import 'package:notes/widget/Note_item.dart';

import 'custom_app_bar.dart';

class  NotesViewApp extends StatefulWidget {

  @override
  State<NotesViewApp> createState() => _NotesViewAppState();
}

class _NotesViewAppState extends State<NotesViewApp> {
  @override
  void initState() {
BlocProvider.of<NoteCubit>(context).fetchAllNote();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(title: 'notes',icon: Icons.search,),
          SizedBox(height: 10,),
   Expanded(child: NoteList())

        ],
      ),
    );
  }
}






