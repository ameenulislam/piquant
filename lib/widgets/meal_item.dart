import 'package:flutter/material.dart';
import 'package:piquant/models/meal.dart';
import 'package:piquant/widgets/meal_detail.dart';
import './meals_bottom_bar.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String name;
  final String affordability;
  final String complexity;
  final int duration;

  MealItem(
      {this.id,
      this.imageUrl,
      this.affordability,
      this.complexity,
      this.duration,
      this.name});

  String get complexityText {
    if (complexity == Complexity.Simple.toString()) {
      return 'Simple';
    } else if (complexity == Complexity.Challenging.toString()) {
      return 'Challenging';
    } else {
      return 'Hard';
    }
  }

  String get affordabilityText {
    if (affordability == Affordability.Affordable.toString()) {
      return 'Affordable';
    } else if (affordability == Affordability.Pricey.toString()) {
      return 'Pricey';
    } else {
      return 'Luxurious';
    }
  }

  void onSelected(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetail.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: 300,
                    color: Colors.black45,
                    child: Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            BottomBar(duration, complexityText, affordabilityText)
          ],
        ),
      ),
    );
  }
}
