import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:piquant/dummy_data.dart';
import 'package:piquant/widgets/bottom_tab.dart';
import 'package:piquant/widgets/filters_screen.dart';
import 'package:piquant/widgets/meal_detail.dart';
import './models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'glucen': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> availableMeals = DUMMY_MEALS;

  void setFilters(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;
    });

    availableMeals = DUMMY_MEALS.where((meal) {
      return null;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piquant',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Hexcolor("ffa931"),
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(fontFamily: 'Raleway', color: Colors.black),
            headline6: TextStyle(
                fontFamily: 'Raleway', fontSize: 20, color: Colors.black54)),
      ),
      home: BottomTab(),
      routes: {
        MealDetail.routeName: (ctx) => MealDetail(),
        FilterScreen.routeName: (ctx) => FilterScreen(setFilters),
      },
    );
  }
}
