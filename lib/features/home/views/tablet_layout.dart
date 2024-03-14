import 'package:flutter/material.dart';
import 'package:responsive/features/home/widgets/custom_sliver_grid.dart';
import 'package:responsive/features/home/widgets/custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(child: ListInTablet()),
        CustomSliverList()
      ],
    );
  }
}
