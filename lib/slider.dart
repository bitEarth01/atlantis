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
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/back1.jpg"), fit: BoxFit.cover),
      ),
    );
  }
}
