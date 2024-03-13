import 'package:flutter/material.dart';
import 'package:responsive/features/home/views/home_body_view.dart';
import 'package:responsive/features/drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () => _scaffoldKey.currentState!.openDrawer(),
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: const HomeBodyView(),
    );
  }
}
