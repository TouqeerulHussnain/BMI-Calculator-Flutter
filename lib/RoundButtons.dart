import 'package:flutter/material.dart';

RawMaterialButton RoundButtons({required icon,required onPressed}){
  return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF34469C),
    );
}