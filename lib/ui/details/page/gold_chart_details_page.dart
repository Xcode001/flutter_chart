import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';

class GoldChartDetailsPage extends StatefulWidget {
  final String appTitle;
  final String changedPrice;
  final String price;

  GoldChartDetailsPage(this.appTitle, this.changedPrice, this.price);

  @override
  GoldChartDetailsPageState createState() => GoldChartDetailsPageState();
}

class GoldChartDetailsPageState extends State<GoldChartDetailsPage> {
  void clickShare() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        title: new Text(
          widget.appTitle,
          style: MyStyle.appbarTitleStyle(),
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.share), onPressed: clickShare)
        ],
      ),
      body: new Container(
          margin: const EdgeInsets.only(top: MyStyle.double32),
          alignment: Alignment.center,
          child: new Stack(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Text(
                    MyStyle.weekChangePrice,
                    textAlign: TextAlign.center,
                    style: MyStyle.customTextStyle(
                        MyStyle.colorDarkGrey, MyStyle.font14),
                  ),
                  new Text(
                    widget.changedPrice,
                    textAlign: TextAlign.center,
                    style: MyStyle.customTextStyle(
                        MyStyle.colorGreen, MyStyle.font14),
                  ),
                  new Text(
                    widget.price,
                    textAlign: TextAlign.center,
                    style: MyStyle.customTextStyle(
                        MyStyle.colorDarkGrey, MyStyle.font24),
                  ),
                ],
              ),
              new Align(
                alignment: FractionalOffset.bottomCenter,
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "* Listed price is showing past 7 days average. Average price is an estimate and may vary depending on your vendor or time/ day.",
                        maxLines: 4,
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGrey, MyStyle.font12),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
