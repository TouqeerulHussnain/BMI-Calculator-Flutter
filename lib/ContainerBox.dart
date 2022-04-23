import 'package:flutter/material.dart';
Padding ContainerBox({required childWidget,required color} ) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
                margin: EdgeInsets.all(5),
                // height: 150,
                // width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color,
                  
                ),
                child: childWidget
                
              ),
    );
  }