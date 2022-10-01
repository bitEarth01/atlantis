import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/logo.png",
              width: 250,
              height: 400,
            )),
      ),
    );
  }
}
