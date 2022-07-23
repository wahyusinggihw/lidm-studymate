import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class Timers extends StatefulWidget {
  Timers({Key? key}) : super(key: key);

  @override
  State<Timers> createState() => _TimersState();
}

class _TimersState extends State<Timers> {
  int _duration = 1 * 10;
  bool _isRunning = false;
  int _break = 5 * 60;
  bool _isBreak = false;
  final CountDownController controller = new CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeonCircularTimer(
                autoStart: false,
                onComplete: () {
                  setState(() {
                    controller.restart();
                    _isBreak = true;
                  });
                },
                width: 200,
                controller: controller,
                duration: _duration,
                strokeWidth: 10,
                isTimerTextShown: true,
                neumorphicEffect: true,
                outerStrokeColor: Colors.grey.shade100,
                innerFillGradient: LinearGradient(colors: [
                  Colors.greenAccent.shade200,
                  Colors.blueAccent.shade400
                ]),
                neonGradient: LinearGradient(colors: [
                  Colors.greenAccent.shade200,
                  Colors.blueAccent.shade400
                ]),
                strokeCap: StrokeCap.round,
                innerFillColor: Colors.black12,
                backgroudColor: Colors.grey.shade100,
                neonColor: Colors.blue.shade900),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _isRunning
                        ? IconButton(
                            icon: Icon(Icons.pause),
                            onPressed: () {
                              setState(() {
                                controller.pause();
                                _isRunning = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.play_arrow),
                            onPressed: () {
                              setState(() {
                                controller.resume();
                                _isRunning = true;
                              });
                            },
                          ),
                    IconButton(
                        icon: Icon(Icons.repeat),
                        onPressed: () {
                          controller.restart();
                          controller.pause();
                          _isRunning = false;
                        }),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
