import 'package:flutter/material.dart';
import 'package:responsive/features/drawer/drawer.dart';
import 'package:responsive/features/home/views/tablet_layout.dart';
import 'package:responsive/features/home/widgets/custom_sliver_grid.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TabletLayout(),
            )),
        Expanded(child: CustomDesktopWidget())
      ],
    );
  }
}

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItemWidget()),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: CustomItemWidget(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
