import 'package:flutter/material.dart';
import 'package:smartdustbin/models/offers.dart';

class Offer extends StatelessWidget {
  final OfferData offerData;
  Offer({this.offerData});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(offerData.title),
        subtitle: Text('Max Points Redeem ${offerData.maxPoints}'),
        leading: Image.network(
          offerData.image,
          height: 30,
          width: 70,
          fit: BoxFit.contain,
        ),
        trailing: RaisedButton(
          onPressed: () {},
          child: Text('Redeem'),
        ),
      ),
    );
  }
}
