import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/Views/note_view.dart';
import 'package:notes/cubits/cubit.dart';

import 'package:notes/simple_bloc.dart';

import 'cubit/cubit.dart';
import 'model/model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NetworkNoteAdapter());
  await Hive.openBox<NetworkNote>('note');
  Bloc.observer=SimpleblocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context)=>NoteCubit(),



      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
        brightness: Brightness.dark,
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home:  NotesViews(),
      ),
    );
  }
}


