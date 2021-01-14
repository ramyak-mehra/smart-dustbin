import 'package:flutter/material.dart';
import 'package:smartdustbin/models/offers.dart';
import 'package:smartdustbin/widgets/userPoints.dart';

import '../utils.dart';
import 'offers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          UserPoints(
            name: 'foo',
            points: '20',
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Container(
              height: kheight(context) * 0.7,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Offer(
                      offerData: OfferData(
                          desciption: 'null',
                          image:
                              'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg',
                          maxPoints: index.toString(),
                          title: 'Offer $index'),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
