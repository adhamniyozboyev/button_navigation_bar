import 'package:button_navigation_bar/functions.dart';
import 'package:button_navigation_bar/screens/nextPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Infoes extends StatelessWidget {
  const Infoes({super.key});

  @override
  Widget build(BuildContext context) {
    List list = getAllFoods();

    return MaterialApp(
        routes: {'/next': (context) => SecondPage()},
        home: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
          ),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xFFF7A01D),
                child: ListTile(
                  onTap: () {
                    ind = index;

                    Navigator.pushNamed(
                      context,
                      '/next',
                    );
                  },
                  leading: CircleAvatar(
                      backgroundColor: Color(0xFF25F02C),
                      child: Icon(
                        Icons.food_bank,
                        color: Colors.red,
                      )),
                  title: Text(
                    list[index].title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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
                        Navigator.pushNamed(context, '/next');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.purple,
                      )),
                ),
              );
            },
          ),
        ));
  }
}
