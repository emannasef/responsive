import 'package:flutter/material.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: 4,
        itemBuilder: (ctx, index) {
          return const SliverItemWidget();
        });
  }
}

class SliverItemWidget extends StatelessWidget {
  const SliverItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Color(0xffB4B4B4),
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}

class ListInTablet extends StatelessWidget {
  const ListInTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return const AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: SliverItemWidget(),
              ));
        },
        itemCount: 15,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
