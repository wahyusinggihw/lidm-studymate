// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/date_time_patterns.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Timers extends StatefulWidget {
  Timers({Key? key}) : super(key: key);

  @override
  State<Timers> createState() => _TimersState();
}

class _TimersState extends State<Timers> {
  double percent = 0;
  static int TimeInMinute = 25;
  int TimeInSecond = TimeInMinute * 60;
  double StopW = 0;
  late Timer timer;
  bool button = false;

  _startTime() {
    TimeInMinute = 25;
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
              percent += 0.005;
            } else {
              percent = 1;
            }
          }
        } else {
          percent = 0;
          TimeInMinute = 25;
          timer.cancel();
        }
      });
    });
  }

  _Display() {
    if (TimeInSecond != 0) {
      TimeInSecond--;
      return '${(TimeInSecond / 60).toInt().toString().padLeft(2, '0')}:${(TimeInSecond % 60).toInt().toString().padLeft(2, '0')}';
    }
  }

  _DisplayTimer() {
    if (StopW >= 0) {
      StopW++;
      return '${(StopW / 3600).toInt().toString().padLeft(2, '0')}:${(StopW / 60).toInt().toString().padLeft(2, '0')}:${(StopW).toInt().toString().padLeft(2, '0')}';
    }
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
                        ),
                        RaisedButton(
                          color: Colors.blue,
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
                          child: Text(
                            'Start',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
