import 'package:flutter/material.dart';

class Portfolio {
  final String value;
  final String percentage;
  final Color? color;

  Portfolio(this.value, this.percentage, this.color);

  static get getPortfolio => [
        Portfolio("\$10,225.21", "\$4,245 . 12%", Colors.green),
        Portfolio("\$30,225.21", "\$5,245 . 11%", Colors.teal),
        Portfolio("\$40,225.21", "\$6,245 . 13%", Colors.blue),
      ];
}
