import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart'; 


class SecondPage extends StatefulWidget {
  final int index;
  const SecondPage ({super.key, required this.index} );

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> img = [
    'images/chicken.jpg',
    'images/pizza.jpg',
    'images/burger.jpg',
    'images/somsa.jpg',
    'images/lagmon.jpg',
  ];
  Widget func(int ind) {
    return Column(
      children: [
        
        Image.asset(img[ind])],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food${widget.index}')),
      body: func(widget.index),
    );
  }
}
