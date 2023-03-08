import 'package:button_navigation_bar/functions.dart';
import 'package:button_navigation_bar/screens/nextPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Infoes extends StatefulWidget {
  const Infoes({super.key});

  @override
  State<Infoes> createState() => _InfoesState();
}

class _InfoesState extends State<Infoes> {
  @override
  Widget build(BuildContext context) {
    List list = getAllFoods();

    return MaterialApp(
        // routes: {'/next': (context) => SecondPage(index:2)},
        home: Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.food_bank)),
            title: Text(list[index].title),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                Text(list[index].time),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  list[index].rating,
                ),
                Icon(
                  Icons.fireplace,
                  color: Colors.red,
                ),
                Text(list[index].energy)
              ],
            ),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(index: index)));
                  });
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.purple,
                )),
          );
        },
      ),
    ));
  }
}
