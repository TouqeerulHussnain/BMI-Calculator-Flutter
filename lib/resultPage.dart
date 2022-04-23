import 'package:flutter/material.dart';
import 'package:lab7/constant.dart';
import 'ContainerBox.dart';
import 'constant.dart';
import 'BMIBrain.dart';

BMI_Calculate obj = BMI_Calculate(height: 0 , weight: 0);
class ResultPAge extends StatefulWidget {
  double _height =0.0;
  int _weight=0;
  ResultPAge(
    {
      required height,
      required weight,
    }
  ){
    this._height = height;
    this._weight = weight;
    obj = BMI_Calculate(height: _height, weight: _weight);
  }
  @override
  State<ResultPAge> createState() => _ResultPAgeState();
}

class _ResultPAgeState extends State<ResultPAge> {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);},),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Your Result', style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
              )
            ],
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: ContainerBox(
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(obj.getResult(),style: TextStyle(fontSize: 20,color: Colors.green),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(obj.calculateBMI(),style: TextStyle(fontSize: 30,color: Colors.green),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(obj.getInterpretation(),style: TextStyle(fontSize: 20,color: Colors.green),),
                    )
                  ],
                ), color: containerColor),
            ),
          ),
          Container(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Recalculate',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), primary: colorOfButtons),
          ),
        )
        ],
      ),
    );
  }
}