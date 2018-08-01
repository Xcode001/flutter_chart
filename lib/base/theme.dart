import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chart/base/mystyle.dart';

final ThemeData themeData = new ThemeData(
    brightness: Brightness.light,
    disabledColor: MyStyle.colorGrey,
    primaryColorDark: MyStyle.colorPrimaryDark,
    primaryColorLight: MyStyle.colorPrimary,
    textSelectionColor: MyStyle.colorAccent,
    textSelectionHandleColor:MyStyle.colorBlue,
    cardColor: Colors.white,
    dividerColor: MyStyle.colorDarkGrey,
    backgroundColor: Colors.grey[100],
    primaryColor: MyStyle.colorPrimary,
    primaryColorBrightness: Brightness.light,
    secondaryHeaderColor: Colors.white,
    accentColor: MyStyle.colorAccent,
    primaryTextTheme: new Typography(platform: defaultTargetPlatform).white,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    highlightColor: MyStyle.layoutBackground,
    fontFamily: 'Zawgyi-One',
    accentIconTheme: const IconThemeData(color: Colors.green));
