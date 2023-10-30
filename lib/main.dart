import 'package:flutter/material.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';
import 'package:mero_discountsv2/screens/more_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: More_page2(
      ),
    );
  }
}