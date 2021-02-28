import 'package:flutter/material.dart';
import './main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function setFilters;

  FilterScreen(this.setFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var glutenFree = false;
  var vegetarian = false;
  var vegan = false;
  var lactoseFree = false;

  Widget buildFilterItems(
      String title, String description, bool currentVal, Function changeState) {
    return Expanded(
        child: SwitchListTile(
            title: Text(title),
            subtitle: Text(description),
            value: currentVal,
            onChanged: changeState));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(
              fontFamily: 'SansNarrow',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save), onPressed: widget.setFilters)
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                "Adjust your dishes",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          buildFilterItems(
              "Gluten free", "Show only gluten free dishes", glutenFree,
              (newValue) {
            setState(() {
              glutenFree = newValue;
            });
          }),
          buildFilterItems(
              "Vegetarian", "Show only vegetarian dishes", vegetarian,
              (newValue) {
            setState(() {
              vegetarian = newValue;
            });
          }),
          buildFilterItems("Vegan", "Show only vegan dishes", vegan,
              (newValue) {
            setState(() {
              vegan = newValue;
            });
          }),
          buildFilterItems(
              "Lactose Free", "Show lactose free dishes", lactoseFree,
              (newValue) {
            setState(() {
              lactoseFree = lactoseFree;
            });
          })
        ],
      ),
    );
  }
}
