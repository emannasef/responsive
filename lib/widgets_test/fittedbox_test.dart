import 'package:flutter/material.dart';

class ImagesGridView extends StatefulWidget {
  const ImagesGridView({super.key});

  @override
  State<ImagesGridView> createState() => _ImagesGridViewState();
}

class _ImagesGridViewState extends State<ImagesGridView> {
  List<String> urls = [
    "https://picsum.photos/200/300",
    "https://picsum.photos/200/300",
    "https://source.unsplash.com/random/200x300",
    "https://source.unsplash.com/random/200x300"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 4.0, crossAxisSpacing: 4.0),
          itemBuilder: ((context, index) =>
              FittedBox(child: Image.network(urls[index])))),
    );
  }
}
