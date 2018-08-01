import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';
import 'package:flutter_chart/ui/home/page/gold_chart_page.dart';
import 'package:flutter_chart/ui/home/page/currency_chart_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabBarItem = new TabBar(
      indicatorPadding: const EdgeInsets.only(
        left: MyStyle.double4,
        right: MyStyle.double4,
      ),
      indicatorColor: MyStyle.colorWhite,
      unselectedLabelColor: MyStyle.colorWhite,
      labelStyle: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: MyStyle.font16,
          fontFamily: 'Zawgyi-One',
          color: MyStyle.colorWhite),
      tabs: [
        new Tab(
          text: MyStyle.goldPrice,
        ),
        new Tab(
          text: MyStyle.currency,
        ),
      ],
      controller: tabController,
    );

    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "Market",
              style: MyStyle.appbarTitleStyle(),
            ),
            centerTitle: true,
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.refresh), onPressed: _clickRefresh)
            ],
            bottom: tabBarItem,
          ),
          body: new TabBarView(
            children: [new GoldChartPage(), new CurrencyChartPage()],
            controller: tabController,
          ),
        ));
  }

  void _clickRefresh() {}
}
