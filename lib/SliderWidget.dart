
import 'package:flutter/material.dart';
import 'constant.dart';
SliderTheme SliderWidget(BuildContext context, slider) {
    return SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: colorOfButtons,
              activeTrackColor: colorOfButtons,
              overlayColor: Colors.red[100],
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 10,
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 12,
              )
            ),
          
            child: slider,
          );
  }