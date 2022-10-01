import 'dart:ui';

import 'package:flutter/material.dart';

import 'planet.dart';

class PlanetPage extends StatefulWidget {
  const PlanetPage({Key? key}) : super(key: key);

  @override
  State<PlanetPage> createState() => _PlanetPageState();
}

class _PlanetPageState extends State<PlanetPage> {
  bool isInteracting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 32,
              right: 32,
              top: MediaQuery.of(context).size.height / 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('BITGLOBE',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ]),
            ),
            Align(
                alignment: Alignment.center,
                child: Transform.translate(
                    offset: Offset(0, 80), child: CircularProgressIndicator())),
            Positioned(
              top:
                  MediaQuery.of(context).size.height / (!isInteracting ? 3 : 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isInteracting = !isInteracting;
                  });
                },
                child: !isInteracting
                    ? Planet(
                        key: Key('Planet1'),
                        interative: false,
                      )
                    : Planet(
                        key: Key('Planet2'),
                        interative: true,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
