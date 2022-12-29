import 'package:flutter/material.dart';

import 'IMyTheme.dart';
import 'text/my_texts.dart';

class MyTheme extends IMyTheme {
  static MyTheme? _instance;
  static MyTheme get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = MyTheme.init();
      return _instance!;
    }
  }

  MyTheme.init();

  ThemeData get themeDataLigth => ThemeData.light().copyWith(
        textTheme: MyTexts.instance.textTheme,
      );

  ThemeData get themeDataDark => ThemeData.dark().copyWith();
}
