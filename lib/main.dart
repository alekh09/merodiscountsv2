import 'package:flutter/material.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';
import 'package:mero_discountsv2/screens/search_result.dart';
//import 'package:mero_discountsv2/screens/testpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: SearchResult(
      ),
    );
  }
}