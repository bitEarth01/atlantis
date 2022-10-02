import 'package:sample_app/finalpage.dart';

import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:slider_controller/slider_controller.dart';

class slider extends StatefulWidget {
  const slider({super.key});
  @override
  State<slider> createState() => _sliderState();
}

class Person {
  final int year;
  final int ssp;

  Person(this.year, this.ssp);
}

class _sliderState extends State<slider> {
  double _value = 2022;
  //double _newvalue = 2;
  double value = 0;
  @override
  Widget build(BuildContext context) {
    int x = 0;
    int y = 0;
    return Container(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 52, 52),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            IconButton(
              padding: EdgeInsets.only(left: 50),
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
                      "Input Parameters",
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
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 180),
                  child: SfSlider(
                    showLabels: false,
                    enableTooltip: true,
                    showTicks: true,
                    value: _value,
                    min: 2020,
                    max: 2099,
                    interval: 10,
                    activeColor: const Color.fromARGB(255, 187, 47, 234),
                    inactiveColor: const Color.fromARGB(255, 216, 205, 216),
                    thumbIcon: Container(
                      height: 30.0,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(236, 225, 206, 206),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    ),
                    onChanged: (dynamic value) {
                      setState(() {
                        _value = value;
                        x = _value.toInt();
                        if (x >= 2020 && x < 2026) {
                          x = 2020;
                        } else if (x >= 2026 && x < 2036) {
                          x = 2030;
                        } else if (x >= 2036 && x < 2046) {
                          x = 2040;
                        } else if (x >= 2046 && x < 2056) {
                          x = 2050;
                        } else if (x >= 2056 && x < 2066) {
                          x = 2060;
                        } else if (x >= 2066 && x < 2076) {
                          x = 2070;
                        } else if (x >= 2076 && x < 2086) {
                          x = 2080;
                        } else if (x >= 2086 && x < 2096) {
                          x = 2090;
                        } else if (x >= 2096 && x < 2099) {
                          x = 2100;
                        }
                        debugPrint('$x');
                      });
                    },
                  ),
                  //print('The value of the input is: $_value');
                ),
                Container(
                  child: const Text('Year',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white)),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 280),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackShape: const GradientRectSliderTrackShape(),
                    ),
                    child: Slider(
                      min: 0,
                      max: 8,
                      thumbColor: const Color.fromARGB(236, 225, 206, 206),
                      inactiveColor: const Color.fromARGB(255, 216, 205, 216),
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                          y = value.toInt();
                          if (y >= 0 && y <= 2) {
                            y = 1;
                          } else if (y > 2 && y <= 4) {
                            y = 2;
                          } else if (y > 4 && y <= 6) {
                            y = 3;
                          } else if (y > 6 && y <= 8) {
                            y = 5;
                          }
                          debugPrint('$y');
                        });
                      },
                    ),
                  ),
                ),
                Container(
                    child: const Text('SSP Conditon',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1, right: 60),
              child: SizedBox(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton.extended(
                    label: const Text('      Continue        '), // <-- Text
                    backgroundColor: Colors.black,
                    icon: const Icon(
                      // <-- Icon
                      Icons.arrow_forward,
                      size: 38.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                new finalpage(person: Person(x, y))),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class GradientRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  /// Create a slider track that draws two rectangles with rounded outer edges.
  const GradientRectSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    assert(context != null);
    assert(offset != null);
    assert(parentBox != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    assert(enableAnimation != null);
    assert(textDirection != null);
    assert(thumbCenter != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting  can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    LinearGradient gradient = const LinearGradient(
      colors: [
        Colors.green,
        Color.fromARGB(255, 198, 207, 40),
        Colors.red,
        Color.fromARGB(255, 136, 9, 159)
      ],
    );

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final activeGradientRect = Rect.fromLTRB(
      trackRect.left,
      (textDirection == TextDirection.ltr)
          ? trackRect.top - (additionalActiveTrackHeight / 2)
          : trackRect.top,
      thumbCenter.dx,
      (textDirection == TextDirection.ltr)
          ? trackRect.bottom + (additionalActiveTrackHeight / 2)
          : trackRect.bottom,
    );

    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..shader = gradient.createShader(activeGradientRect)
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius = Radius.circular(trackRect.height / 2 + 1);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
        bottomLeft: (textDirection == TextDirection.ltr)
            ? activeTrackRadius
            : trackRadius,
      ),
      leftTrackPaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        topRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
        bottomRight: (textDirection == TextDirection.rtl)
            ? activeTrackRadius
            : trackRadius,
      ),
      rightTrackPaint,
    );
  }
}
