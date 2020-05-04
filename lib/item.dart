import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ItemSeries {
  final String day;
  final int item;
  final charts.Color barColor;

  ItemSeries({
    @required this.day,
    @required this.item,
    @required this.barColor
  })
;
}

class Item1Series {
  final String day;
  final double item;
  final charts.Color barColor;

  Item1Series({
    @required this.day,
    @required this.item,
    @required this.barColor
  })
;
}