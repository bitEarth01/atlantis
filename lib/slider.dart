import 'dart:ffi';

import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:slider_controller/slider_controller.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  DateTime _value = DateTime(2002, 01, 01);
  double _newvalue = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 88, 113),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: SfSlider(
                min: DateTime(2000, 01, 01, 00),
                max: DateTime(2020, 12, 31, 24),
                value: _value,
                interval: 5,
                activeColor: Colors.redAccent,
                inactiveColor: Color.fromARGB(255, 237, 161, 133),
                showTicks: true,
                showLabels: false,
                dateIntervalType: DateIntervalType.years,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: SfSlider(
                min: 1,
                max: 8,
                value: _newvalue,
                interval: 1,
                activeColor: Colors.redAccent,
                inactiveColor: Color.fromARGB(255, 237, 161, 133),
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value) {
                  setState(() {
                    _newvalue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
