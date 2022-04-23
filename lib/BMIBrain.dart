import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class BMI_Calculate {
  double height =0.0;
  int weight=0;
  double? heightInMeters;
  int? _age;
  double _bmi =0.0;

  BMI_Calculate({required  this.height,required this.weight}){
              height = height/100;    //convert cm to meter
  }
  String calculateBMI() {
    _bmi = weight / pow(height, 2) ;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    calculateBMI();
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
