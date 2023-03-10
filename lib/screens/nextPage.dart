import 'package:button_navigation_bar/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondPage extends StatelessWidget {
  List<String> img = [
    'images/chicken.jpg',
    'images/pizza.jpg',
    'images/burger.jpg',
    'images/somsa.jpg',
    'images/lagmon.jpg',
  ];

  Widget func(int ind) {
    return Column(
      children: [Center(child: Image.asset(img[ind]))],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food${ind + 1}')),
      body: func(ind),
    );
  }
}
