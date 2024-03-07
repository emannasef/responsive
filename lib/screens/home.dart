import 'package:flutter/material.dart';
import 'package:responsive/views/home_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
    body: const HomeBodyView(),
    );
  }
}
