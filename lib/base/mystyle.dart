import 'package:flutter/material.dart';

class MyStyle {
  static const font24 = 24.0;
  static const font20 = 20.0;
  static const font18 = 18.0;
  static const font16 = 16.0;
  static const font14 = 14.0;
  static const font12 = 12.0;

  static const double4 = 4.0;
  static const double8 = 8.0;
  static const double10 = 10.0;
  static const double12 = 12.0;
  static const double16 = 16.0;
  static const double19 = 19.0;
  static const double20 = 20.0;
  static const double24 = 24.0;
  static const double26 = 26.0;
  static const double32 = 32.0;
  static const double48 = 48.0;
  static const double64 = 64.0;

  static final Color colorPrimary = const Color(0xFFE4B33B);
  static final Color colorPrimaryDark = const Color(0xCCE4B33B);
  static final Color colorAccent = const Color(0xFFFFA834);
  static final Color chartBackground = Colors.orange[200];
  static final Color bgColor = const Color(0xFFFFF1D7);
  static final Color colorBlue = const Color(0xFF3D8AF7);
  static final Color colorGreen = const Color(0xFF72BB53);
  static final Color colorWhite = Colors.white;
  static final Color colorBlack = Colors.black;
  static final Color colorDarkGrey = const Color(0xFF444444);
  static final Color colorGrey = Colors.grey;
  static final Color layoutBackground = Colors.grey[100];

  static final String goldPrice = "ေရြွေစ်း";
  static final String currency = "Currency";
  static final String taKyatThar = "တစ္က်ပ္သား";
  static final String rKhautZay = "အေခါက္ေဈး*";
  static final String lastWeekGoldPrice = "အရင္အပတ္ေရႊေဈး";
  static final String paePrice="၁၅ ပဲရည္ေဈး";
  static final String weekChangePrice="ဒီအပတ္အေျပာင္းအလဲေဈး";



  static TextStyle headerStyle() {
    return new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: font18,
    );
  }

  static TextStyle captionTextStyle() {
    return new TextStyle(color: colorBlack, fontSize: font16);
  }

  static TextStyle titleTextStyle() {
    return new TextStyle(fontSize: font14, color: MyStyle.colorDarkGrey);
  }

  static TextStyle appbarTitleStyle() {
    return new TextStyle(
        color: colorWhite, fontSize: font16, fontWeight: FontWeight.bold);
  }

  static TextStyle buttonTextStyle() {
    return new TextStyle(
        color: colorWhite, fontSize: font14, fontWeight: FontWeight.bold);
  }

  static TextStyle listItemTextStyle() {
    return new TextStyle(color: MyStyle.colorBlack, fontSize: font14);
  }

  static TextStyle dateTimeTextStyle() {
    return new TextStyle(color: MyStyle.colorGrey, fontSize: font12);
  }

  static TextStyle customTextStyle(Color mTextColor, double mTextSize) {
    return new TextStyle(fontSize: mTextSize, color: mTextColor);
  }

  static TextStyle myTextStyle(
      Color mColor, double mSize, FontWeight mFontWeight) {
    return new TextStyle(
        fontSize: mSize, color: mColor, fontWeight: mFontWeight);
  }

  static TextStyle itemTextStyle() {
    return new TextStyle(fontSize: font12, color: MyStyle.colorDarkGrey);
  }
}
