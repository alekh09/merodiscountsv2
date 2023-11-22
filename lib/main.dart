import 'package:flutter/material.dart';
import 'features/screens/my_order/order_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderDetailsScreen(
      ),
    );
  }
}