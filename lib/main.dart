import 'package:button_navigation_bar/home/data.dart';
import 'package:button_navigation_bar/functions.dart';
import 'package:flutter/material.dart';
import 'home/food.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<Food> list = getAllFoods();
    return MaterialApp(
        home: Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.food_bank)),
            title: Text(list[index].title),
            subtitle: Row(
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
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.arrow_forward_ios,color: Colors.purple,)),
          );
        },
      ),
    ));
  }
}
