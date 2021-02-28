import 'package:flutter/material.dart';
import './main_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Piquant'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: "Categories",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "Favourites",
            )
          ]),
        ),
        drawer: MainDrawer(),
        body: TabBarView(children: [CategoriesScreen(), FavoritesScreen()]),
      ),
    );
  }
}
