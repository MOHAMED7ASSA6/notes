import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/widget/customBar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
Text(title,style: TextStyle(fontSize: 28,
),),
        Spacer(),
        CustomeBarSearch(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}

