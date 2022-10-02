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
                iconSize: 38,
                color: const Color.fromARGB(255, 237, 230, 230),
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "Land Lost",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ]))));
  }
}
