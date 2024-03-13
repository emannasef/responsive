import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 16),
            child: CustomSliverListItem(),
          );
        });
  }
}

class CustomSliverListItem extends StatelessWidget {
  const CustomSliverListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
          color: Color(0xffECECEC),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
