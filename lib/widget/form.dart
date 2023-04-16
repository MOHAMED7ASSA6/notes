
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubit/cubit.dart';
import 'package:notes/widget/colors_item.dart';

import 'package:notes/widget/textfield.dart';

import '../model/model.dart';


class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final   GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String ?title,subtitle;


  @override
  Widget build(BuildContext context) {
    return Form(
      key:formkey ,

      child: Column(
        children: [
          SizedBox(height: 10,),
          textfiled(title: 'title',onsaved: (value){
            title=value;
          },),
          SizedBox(height: 15,),
          textfiled(title: 'context',mixline: 5,onsaved: (value){
            subtitle=value;
          },),
          SizedBox(height: 50,),
          ColorListView(),
          SizedBox(height: 5,),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: (){
                var currentdate=DateTime.now();
                var formattedcurrent= DateFormat.yMd().format(currentdate);

                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();
                  var networkmodel =NetworkNote(Color:Colors.deepOrangeAccent.value, title: title!, subtitle: subtitle!, data: formattedcurrent);

                  BlocProvider.of<AddNoteCubit>(context).AddNote(networkmodel);

                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }

              },
              child: Text('Add',style: TextStyle(
                color: Colors.black
            ),),),
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
