import 'package:flutter/widgets.dart';

import 'home/food.dart';
import 'home/data.dart';

List<Food> getAllFoods() {
  List<Food> list = [];
  for (Map<String, String> mp in data.values) {
    list.add(Food(
        title: mp['title']!,
        time: mp['time']!,
        rating: mp['rating']!,
        energy: mp['energy']!));
  }
  return list;
}
