import 'package:flutter/material.dart';
import 'slider.dart';

class finalpage extends StatefulWidget {
  const finalpage({super.key});

  @override
  State<finalpage> createState() => _finalpageState();
}

class _finalpageState extends State<finalpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 60, 52, 52),
            body: SafeArea(
                child: Stack(alignment: Alignment.topLeft, children: [
              IconButton(
                padding: EdgeInsets.only(left: 50),
                iconSize: 38,
                color: const Color.fromARGB(255, 237, 230, 230),
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]))));
  }
}
