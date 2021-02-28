import 'package:flutter/material.dart';

import 'chosen_category_screen.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String id;
  final Color color;

  CategoryItem(
    this.name,
    this.id,
    this.color,
  );

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_ctx) {
        return ChosenCategoryScreen(id, name);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                color: [color.withOpacity(0.5), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
