import 'dart:developer';

import 'package:flutter/material.dart';

class LayOutBuilderTest extends StatelessWidget {
  const LayOutBuilderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrans) {
        log(constrans.maxWidth.toString());
        return constrans.maxWidth <= 500
            ? MobileLayoutList()
            : DeskTopLayoutList();
      }),
    );
  }
}

class MobileLayoutList extends StatelessWidget {
  const MobileLayoutList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, indx) {
          return Container(
            color: Colors.green,
            margin: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => NewScreenNavigation(num: indx + 1))),
              child: ListTile(
                title: Text("${indx + 1}"),
              ),
            ),
          );
        });
  }
}

class NewScreenNavigation extends StatelessWidget {
  final int num;
  const NewScreenNavigation({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$num"),
      ),
    );
  }
}

class DeskTopLayoutList extends StatefulWidget {
  const DeskTopLayoutList({super.key});

  @override
  State<DeskTopLayoutList> createState() => _DeskTopLayoutListState();
}

class _DeskTopLayoutListState extends State<DeskTopLayoutList> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (ctx, indx) {
                return Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      num = indx + 1;
                      setState(() {});
                    },
                    child: ListTile(
                      title: Text("${indx + 1}"),
                    ),
                  ),
                );
              }),
        ),
        Expanded(child: Text("${num}"))
      ]),
    );
  }
}
