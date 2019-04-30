import 'package:flutter/material.dart';

class Shoes {
  final int number;
  final Color color;
  final String image;
  final String description;
  final double fromPrice;
  final double toPrice;

  Shoes({
    @required this.number,
    @required this.color,
    @required this.image,
    @required this.description,
    @required this.fromPrice,
    @required this.toPrice
  });
}