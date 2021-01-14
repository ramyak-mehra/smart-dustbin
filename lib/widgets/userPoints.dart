import 'package:flutter/material.dart';
import 'package:smartdustbin/utils.dart';

class UserPoints extends StatelessWidget {
  final String name;
  final String points;
  UserPoints({@required this.name, @required this.points});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kheight(context) * 0.13,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Hello $name',
                style: Theme.of(context).textTheme.headline2,
              ),
              CircleAvatar(
                radius: kheight(context) * 0.04,
                child: Text(
                  points,
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
