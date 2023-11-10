import 'package:flutter/material.dart';
import 'package:mero_discountsv2/features/screens/checkout/checkout_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckOutScreen(
      ),
    );
  }
}