import 'package:flutter/material.dart';
import 'package:flutter_chart/base/theme.dart';
import 'package:flutter_chart/ui/home/page/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      color: Colors.white,
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


