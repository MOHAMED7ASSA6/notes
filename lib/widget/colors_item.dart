

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/cubit.dart';
import 'package:notes/cubits/cubit.dart';

import '../const.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return   isActive ?CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    ):CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
   int currentindex=0;

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
             BlocProvider.of<AddNoteCubit>(context).color=colors[index];
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

