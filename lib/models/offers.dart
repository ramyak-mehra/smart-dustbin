import 'package:flutter/material.dart';

class OfferData {
  final String title;
  final String maxPoints;
  final String desciption;
  final String image;

  OfferData(
      {@required this.desciption,
      @required this.image,
      @required this.maxPoints,
      @required this.title});
}
