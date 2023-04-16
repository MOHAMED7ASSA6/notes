import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubit/cubit.dart';
import 'package:notes/cubit/stata.dart';

import 'package:notes/widget/form.dart';

import '../cubits/cubit.dart';

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        showModalBottomSheet(

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            isScrollControlled: true,
            context: context, builder: (context){
          return  BlocProvider(create: (context)=>AddNoteCubit(),
          child: BlocConsumer<AddNoteCubit,AddNoteStates>(builder:(context,stata){
            return ModalProgressHUD(

              inAsyncCall:stata is AddLoadihgstata ?true:false,
              child: Padding(
                padding:  EdgeInsets.only(left: 16,right: 16
                    ,bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AddNote()
                ),
              ),
            );
          } ,listener: (context,stata){

            if(stata is AddSuccessstata){
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
              Navigator.pop(context);
            }
            if(stata is AddFailurstata){
              print('AddFailurstata');
            }
          },),
          );
        });

      },child: Icon(Icons.add,color: Colors.white,),);
  }
}
