
import 'package:flutter/material.dart';
import 'package:radio_buttons/screens/trainingprogram_screen.dart';

void main() {
  runApp(TrainingProgramApp());
}

class TrainingProgramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training Program',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TrainingProgramScreen(),
    );
  }
}