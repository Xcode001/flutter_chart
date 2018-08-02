import 'package:flutter/material.dart';
import 'package:flutter_chart/base/mystyle.dart';

class ProfitLossResultPage extends StatefulWidget {
  @override
  ProfitLossResultPageState createState() => ProfitLossResultPageState();
}

class ProfitLossResultPageState extends State<ProfitLossResultPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> goldTypeArr = ["အေခါက္", "၁၅ ပဲရည္"];
  List<String> weightArr = ["က်ပ္သား", "မူးသား", "ပဲ", "ေရြး"];
  String selectedWeight = "က်ပ္သား";
  String selectedGoldType = "အေခါက္";

  Widget _goldTypeDropDownButton() {
    return new Container(
        child: new DropdownButtonHideUnderline(
            child: new DropdownButton(
                isDense: true,
                value: selectedGoldType,
                items: goldTypeArr.map((String value) {
                  return new DropdownMenuItem(
                    value: value,
                    child: new Text(value, style: MyStyle.titleTextStyle()),
                  );
                }).toList(),
                onChanged: (String val) {
                  setState(() {
                    selectedGoldType = val;
                  });
                })));
  }

  Widget _weightDropDown() {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton(
          value: selectedWeight,
          isDense: true,
          items: weightArr.map((String value) {
            return new DropdownMenuItem(
              value: value,
              child: new Text(value, style: MyStyle.titleTextStyle()),
            );
          }).toList(),
          onChanged: (String val) {
            setState(() {
              selectedWeight = val;
            });
          }),
    );
  }

  Widget _titleText(String title) {
    return new Padding(
      padding: const EdgeInsets.only(top: MyStyle.double26),
      child: new Text(
        title,
        style: MyStyle.customTextStyle(MyStyle.colorGrey, MyStyle.font12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          MyStyle.profitLossCal,
          style: MyStyle.appbarTitleStyle(),
        ),
        centerTitle: true,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
      ),
      body: new Container(
          child: new Stack(
        children: <Widget>[
          new Form(
            key: _formKey,
            child: new ListView(
              padding: const EdgeInsets.only(
                  left: MyStyle.double10,
                  right: MyStyle.double10,
                  top: MyStyle.double10),
              children: <Widget>[
                _titleText(
                  MyStyle.goldType,
                ),
                _goldTypeDropDownButton(),
                new Divider(
                  color: MyStyle.colorBlack,
                  height: 2.0,
                ),
                _titleText(
                  MyStyle.kyatTharBuyPrice,
                ),
                new Stack(
                  children: <Widget>[
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                    new Positioned(
                      bottom: 10.0,
                      right: 0.0,
                      child: new Text(
                        "က်ပ္",
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGrey, MyStyle.font18),
                      ),
                    )
                  ],
                ),
                _titleText(
                  MyStyle.amountToSell,
                ),
                new Stack(
                  children: <Widget>[
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Amount';
                        }
                      },
                    ),
                    new Positioned(
                        bottom: 10.0, right: 0.0, child: _weightDropDown())
                  ],
                ),
                new Padding(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        MyStyle.sellingPrice,
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGrey, MyStyle.font12),
                      ),
                      new Align(
                        alignment: FractionalOffset.centerRight,
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              MyStyle.todayPrice,
                              style: MyStyle.customTextStyle(
                                  MyStyle.colorGrey, MyStyle.font12),
                            ),
                            new IconButton(
                                icon: new Icon(
                                  Icons.refresh,
                                  size: 20.0,
                                  color: MyStyle.colorGreen,
                                ),
                                onPressed: null)
                          ],
                        ),
                      )
                    ],
                  ),
                  padding: const EdgeInsets.only(top: MyStyle.double26),
                ),
                new Stack(
                  children: <Widget>[
                    new TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter selling price';
                        }
                      },
                    ),
                    new Positioned(
                      bottom: 10.0,
                      right: 0.0,
                      child: new Text(
                        "က်ပ္",
                        style: MyStyle.customTextStyle(
                            MyStyle.colorGrey, MyStyle.font18),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          new Positioned(
            child: new Container(
              width: screenSize.width,
              color: MyStyle.layoutBackground,
              padding: const EdgeInsets.only(
                  top: MyStyle.double8, bottom: MyStyle.double8),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new FlatButton(
                      onPressed: null,
                      child: new Text(
                        "Cancel",
                        style: MyStyle.myTextStyle(
                            MyStyle.colorGrey, MyStyle.font16,FontWeight.bold),
                      )),
                  new FlatButton(
                      onPressed: null,
                      child: new Text(
                        "Calculate",
                        style: MyStyle.myTextStyle(
                            MyStyle.colorBlue, MyStyle.font16,FontWeight.bold),
                      ))
                ],
              ),
            ),
            bottom: 0.0,
          )
        ],
      )),
    );
  }
}
