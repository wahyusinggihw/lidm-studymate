import 'package:flutter/material.dart';
import 'package:study_mate/main/List/UI_Timer.dart';
import 'package:study_mate/main/List/UI_ToDoList.dart';
import 'package:study_mate/main/List/UI_WeeklyPlanner.dart';
import 'package:study_mate/main/auth/auth_model.dart';
import 'package:study_mate/main/quads/quads_model.dart';
import 'package:study_mate/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        Provider<QuadModel>(
          create: (_) => QuadModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Study Mate',
        home: Timers(),
      ),
    );
  }
}
