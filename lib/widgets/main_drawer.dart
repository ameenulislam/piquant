import 'package:flutter/material.dart';
import './filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildDrawerItems(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "What's Cooking ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Theme.of(context).primaryColorDark),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          buildDrawerItems(Icons.restaurant, "Meals",
              () => Navigator.of(context).pushNamed('/')),
          buildDrawerItems(
              Icons.settings,
              "Filter",
              () => Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName))
        ],
      ),
    );
  }
}
