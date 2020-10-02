import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as ch;
import 'item.dart';

class ChartSteps extends StatelessWidget {
  final List<ItemSeries> data;
  ChartSteps({@required this.data});
  @override
  Widget build(BuildContext context) {
    List<ch.Series<ItemSeries, String>> series = [
      ch.Series(
        id: 'Statistics',
        data: data,
        domainFn: (ItemSeries series, _) => series.day,
        measureFn: (ItemSeries series, _) => series.item,
        colorFn: (ItemSeries series, _) => series.barColor,
      )
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(children: <Widget>[
          Text(
            "Over the last week",
            style: Theme.of(context).textTheme.body2,
          ),
          Expanded(child: ch.BarChart(series, animate: true))
        ]),
      ),
    );
  }
}

class ChartSteps1 extends StatelessWidget {
  final List<Item1Series> data1;
  ChartSteps1({@required this.data1});
  @override
  Widget build(BuildContext context) {
    List<ch.Series<Item1Series, String>> series = [
      ch.Series(
        id: 'Statistics',
        data: data1,
        domainFn: (Item1Series series, _) => series.day,
        measureFn: (Item1Series series, _) => series.item,
        colorFn: (Item1Series series, _) => series.barColor,
      )
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: <Widget>[
            Text(
              "Over the last week",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Expanded(
              child: ch.BarChart(series, animate: true),
            )
          ],
        ),
      ),
    );
  }
}
