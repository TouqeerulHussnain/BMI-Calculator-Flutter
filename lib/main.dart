import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab7/resultPage.dart';
import 'iconAndLable.dart';
import 'themeDataOwn.dart';
import 'constant.dart';
import 'RoundButtons.dart';
import 'SliderWidget.dart';
import 'ContainerBox.dart';
import 'resultPage.dart';
import 'BMIBrain.dart';

void main() {
  runApp(MaterialApp(
    theme: themeDataOwn,
    home: BMIC_Calculator(),
  ));
}

int test = 0;

class BMIC_Calculator extends StatefulWidget {
  const BMIC_Calculator({Key? key}) : super(key: key);

  @override
  State<BMIC_Calculator> createState() => _BMIC_CalculatorState();
}

class _BMIC_CalculatorState extends State<BMIC_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = gender.male;
                    });
                    print(selectedgender);
                  },
                  child: ContainerBox(
                    color: selectedgender == gender.male
                        ? maleContainerColor
                        : containerColor,
                    childWidget: IconAndLable(
                      icon: FontAwesomeIcons.mars,
                      lable: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = gender.female;
                    });
                    print('press female');
                  },
                  child: ContainerBox(
                    color: selectedgender == gender.female
                        ? femaleContainerColor
                        : containerColor,
                    childWidget: IconAndLable(
                      icon: FontAwesomeIcons.venus,
                      lable: 'Female',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ContainerBox(
            color: containerColor,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      selectedHight.round().toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('(cm)'),
                  ],
                ),
                SliderWidget(
                  context,
                  Slider(
                      value: selectedHight,
                      min: 180,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          selectedHight = value;
                        });
                      }),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ContainerBox(
                  color: containerColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('weight'),
                      ),
                      Text(
                        weightSelected.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtons(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weightSelected++;
                                  });
                                }),
                            RoundButtons(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weightSelected--;
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ContainerBox(
                  color: containerColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Age'),
                      ),
                      Text(
                        ageSelected.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtons(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    ageSelected++;
                                  });
                                }),
                            RoundButtons(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    ageSelected--;
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ResultPAge(
                            height: selectedHight,
                            weight: weightSelected,
                          )));
            },
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), primary: colorOfButtons),
          ),
        )
      ]),
    );
  }
}
