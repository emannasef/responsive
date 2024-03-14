import 'package:flutter/material.dart';
import 'package:responsive/features/home/views/desktop_layout.dart';
import 'package:responsive/features/home/views/mobile_layout.dart';
import 'package:responsive/features/home/views/tablet_layout.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constarns) {
        if (constarns.maxWidth < 600) {
          return const MobileLayout();
        } else if (constarns.maxWidth < 900) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}

class HomeBodyEmanTrial extends StatelessWidget {
  const HomeBodyEmanTrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) => Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ))),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (ctx, index) {
                return AspectRatio(
                  aspectRatio: 6 / 1,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                );
              })
        ],
      ),
    );
  }
}
