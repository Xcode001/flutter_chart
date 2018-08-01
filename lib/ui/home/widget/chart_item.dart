import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';

class GoldChartItem extends StatefulWidget {
  final String title1;
  final String title2;
  final String val1;
  final String val2;

  GoldChartItem(this.title1, this.title2, this.val1, this.val2);

  @override
  GoldChartItemState createState() => GoldChartItemState();
}

class GoldChartItemState extends State<GoldChartItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: MyStyle.colorWhite, boxShadow: [
        new BoxShadow(
            color: Colors.grey, blurRadius: 3.0, offset: new Offset(0.0, 0.1))
      ]),
      height: 250.0,
      child: new Stack(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.symmetric(
                horizontal: MyStyle.double10, vertical: MyStyle.double10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(widget.title1,
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGrey, MyStyle.font12)),
                    new Text(
                      widget.title2,
                      style: MyStyle.customTextStyle(
                          MyStyle.colorDarkGrey, MyStyle.font24),
                    )
                  ],
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Text(widget.val1,
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGreen, MyStyle.font12)),
                    new Text(
                      widget.val2,
                      style: MyStyle.customTextStyle(
                          MyStyle.colorDarkGrey, MyStyle.font12),
                    )
                  ],
                )
              ],
            ),
          ),
          new Positioned(
            bottom: 4.0,
            left: 16.0,
            child: new Text(
              MyStyle.lastWeekGoldPrice,
              style: MyStyle.customTextStyle(
                  MyStyle.colorAccent, MyStyle.double12),
            ),
          )
        ],
      ),
    );
  }
}
