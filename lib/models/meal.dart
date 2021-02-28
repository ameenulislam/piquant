import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final String imageUrl;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.categories,
      @required this.ingredients,
      @required this.imageUrl,
      @required this.duration,
      @required this.steps,
      @required this.affordability,
      @required this.complexity,
      @required this.isLactoseFree,
      @required this.isGlutenFree,
      @required this.isVegan,
      @required this.isVegetarian});
}
