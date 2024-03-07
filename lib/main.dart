import 'package:flutter/material.dart';
import 'package:responsive/widgets_test/fittedbox_test.dart';
import 'package:responsive/screens/home.dart';
import 'package:responsive/widgets_test/layout_builder_test.dart';
import 'package:responsive/views/home_body_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
