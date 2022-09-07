import 'package:flutter/material.dart';
import 'package:monoui/handlerwidget/handlerwidgets.dart';

class ConvertArabicToEnglish with ChangeNotifier {

  void incrementEnglish() {
   convertToArabic=!convertToArabic;
    // ignore: avoid_print
    print("convert to arabic : $convertToArabic");
    notifyListeners();
  }
 

}