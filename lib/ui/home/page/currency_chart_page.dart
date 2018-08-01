import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';

class CurrencyChartPage extends StatefulWidget {
  @override
  CurrencyChartPageState createState() => CurrencyChartPageState();
}

class CurrencyChartPageState extends State<CurrencyChartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text("Currency")
        ],
      ),
    );
  }
}
