import 'package:flutter/material.dart';
import 'package:monoui/introductionPage/page1.dart';
import 'package:monoui/provider/allprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Using statmanagement "Provider"
    return  ChangeNotifierProvider(
      create: (context) => ConvertArabicToEnglish(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mono UI',
        home: Onbording1(),
      ),
    );
  }
}
