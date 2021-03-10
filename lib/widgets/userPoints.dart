import 'package:flutter/material.dart';
import 'package:smartdustbin/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class UserPoints extends StatelessWidget {
  final String name;
  final String points;
  UserPoints({@required this.name, @required this.points});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kheight(context) * 0.13,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Hello $name',
              style: Theme.of(context).textTheme.headline4,
            ),
            CircleAvatar(
              backgroundColor: Vx.hexToColor('#5ec043').withOpacity(0.5),
              radius: kheight(context) * 0.04,
              child: Text(
                points,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
