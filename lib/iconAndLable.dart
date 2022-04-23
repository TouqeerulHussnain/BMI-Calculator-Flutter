import 'package:flutter/material.dart';


class IconAndLable extends StatelessWidget {
  IconAndLable({required this.icon,required this.lable});
  final IconData? icon;
  final String? lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        SizedBox(height: 3,),
        Text(lable.toString(), style:Theme.of(context).textTheme.headline6),
      ],
      
    );
  }
}
