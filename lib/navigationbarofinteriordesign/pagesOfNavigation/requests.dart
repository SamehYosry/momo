import 'package:flutter/material.dart';
class Requests extends StatelessWidget {
  const Requests({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(
        child: Text(
          "My Requests",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}