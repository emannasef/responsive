import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive/features/home/screens/home_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MainApp(),
    enabled: true,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
