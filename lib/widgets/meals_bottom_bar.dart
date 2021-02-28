import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final mDuration;
  final mAffordability;
  final mComplexity;

  BottomBar(this.mDuration, this.mComplexity, this.mAffordability);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.schedule),
              SizedBox(
                width: 6,
              ),
              Text('$mDuration mins')
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.work),
              SizedBox(
                width: 6,
              ),
              Text(mComplexity)
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Row(
            children: <Widget>[
              Icon(Icons.account_balance_wallet),
              SizedBox(
                width: 6,
              ),
              Text(mAffordability)
            ],
          )
        ],
      ),
    );
  }
}
