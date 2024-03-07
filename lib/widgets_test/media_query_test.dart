import 'dart:developer';

import 'package:flutter/material.dart';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
      double hieght = MediaQuery.of(context).size.height;
    log(hieght.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            width: 200,
            height: hieght/4,
          ),
          Container(
            color: Colors.black,
            width: 200,
            height: hieght/4,
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: hieght/4,
          )
        ],
      ),
    );
  }
}