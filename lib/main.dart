import 'package:flutter/material.dart';
import 'features/screens/checkout/checkout_screen.dart';
import 'features/screens/search/search_result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchResultPage(
      ),
    );
  }
}