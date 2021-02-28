import 'package:flutter/material.dart';

import './meal_item.dart';
import '../dummy_data.dart';

class ChosenCategoryScreen extends StatelessWidget {
  final String id, itemName;

  ChosenCategoryScreen(this.id, this.itemName);
  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          itemName,
          style: TextStyle(
              fontFamily: 'SansNarrow',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            name: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability.toString(),
            complexity: categoryMeals[index].complexity.toString(),
            duration: categoryMeals[index].duration,
            imageUrl: categoryMeals[index].imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
