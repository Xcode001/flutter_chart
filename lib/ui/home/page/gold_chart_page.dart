import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';
import 'package:flutter_chart/ui/home/widget/chart_item.dart';
import 'package:flutter_chart/ui/details/page/gold_chart_details_page.dart';

class GoldChartPage extends StatefulWidget {
  @override
  GoldChartPageState createState() => GoldChartPageState();
}

class GoldChartPageState extends State<GoldChartPage> {
  void _clickItem(String title, String changedPrice, String price) {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (_) => GoldChartDetailsPage(title, changedPrice, price)));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: new Container(
      margin: const EdgeInsets.only(
          top: MyStyle.double20, bottom: MyStyle.double20),
      color: MyStyle.layoutBackground,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new InkWell(
            child: new GoldChartItem(MyStyle.taKyatThar, MyStyle.rKhautZay,
                "+ ၅၀၀ (၀.၅၅%)", "၉၅၀,၀၀၀"),
            onTap: () => _clickItem(
                "${MyStyle.taKyatThar}  ${MyStyle.rKhautZay}",
                "+ ၅၀၀ (၀.၅၅%)",
                "၉၅၀,၀၀၀"),
          ),
          new Padding(padding: const EdgeInsets.only(top: MyStyle.double16)),
          new InkWell(
            child: new GoldChartItem(MyStyle.taKyatThar, MyStyle.paePrice,
                "+ ၄၀၀ (၀.၄၆%)", "၈၉၄,၆၀၀"),
            onTap: () => _clickItem(
                "${MyStyle.taKyatThar}  ${MyStyle.paePrice}",
                "+ ၄၀၀ (၀.၄၆%)",
                "၈၉၄,၆၀၀"),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: MyStyle.double8, vertical: MyStyle.double16),
            child: new Text(
              "* Listed gold price is calculated in average and may change accordingly to the vendors. To get an accurate gold price, please contact the vendors directly.",
              maxLines: 4,
              textAlign: TextAlign.left,
              style:
                  MyStyle.customTextStyle(MyStyle.colorGrey, MyStyle.font12),
            ),
          )
        ],
      ),
    ));
  }
}
