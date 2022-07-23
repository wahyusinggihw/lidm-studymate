// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';

class Timers extends StatefulWidget {
  Timers({Key? key}) : super(key: key);

  @override
  State<Timers> createState() => _TimersState();
}

class _TimersState extends State<Timers> {
  double percent = 0;
  int TimeInMinute = 1;
  int TimeInSecond = 1 * 60;
  double StopW = 0;
  late Timer timer;
  bool button = false;
  bool _isBreak = false;

  _startTime() {
    if (_isBreak == true) {
      setState(() {
        TimeInSecond = 5 * 60;
        TimeInMinute = 5;
        int Time = TimeInMinute * 60;
        _isBreak = false;
      });
    } else {
      setState(() {
        TimeInSecond = 1 * 60;
        TimeInMinute = 1;
        _isBreak = true;
      });
    }
    int Time = TimeInMinute * 60;
    double SecPercent = (Time / 100);
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (Time > 0) {
          Time--;
          if (Time % 60 == 0) {
            TimeInMinute--;
          }
          if (Time % SecPercent == 0) {
            if (percent < 1) {
              percent += 0.01;
            } else {
              percent = 1;
            }
          }
        } else {
          setState(() {
            _isBreak = true;
          });
          percent = 0;
          TimeInMinute = 25;
          timer.cancel();
        }
      });
    });
  }

  _Display() {
    TimeInSecond--;
    return '${(TimeInSecond / 60).toInt().toString().padLeft(2, '0')}:${(TimeInSecond % 60).toInt().toString().padLeft(2, '0')}';
  }

  _DisplayTimer() {
    StopW++;
    return '${(StopW / 3600).toInt().toString().padLeft(2, '0')}:${(StopW / 60).toInt().toString().padLeft(2, '0')}:${(StopW % 60).toInt().toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffF8B500),
                Color(0xffFB8500),
              ],
              begin: FractionalOffset(0.5, 1),
            ),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: CircularPercentIndicator(
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  animateFromLastPercent: true,
                  radius: 100,
                  lineWidth: 20.0,
                  percent: percent,
                  center: Text(
                    _Display(),
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  progressColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      'Study Time',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '25',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      'Break Time',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          _DisplayTimer(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.orange,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      button
                                          ? setState(() {
                                              timer.cancel();
                                              button = false;
                                            })
                                          : setState(() {
                                              _startTime();
                                              button = true;
                                            });
                                    },
                                    icon: Icon(
                                      button
                                          ? Icons.pause
                                          : Icons.play_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: Colors.red,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        timer.cancel();
                                        percent = 0;
                                        TimeInSecond = TimeInMinute * 60;
                                        StopW = 0;
                                        button = false;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.stop,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
