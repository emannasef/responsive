import 'package:flutter/material.dart';
import 'package:responsive/fittedbox_test.dart';
import 'package:responsive/layout_builder_test.dart';
import 'package:responsive/section3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Section3(),
    );
  }
}
