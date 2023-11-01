import 'package:flutter/material.dart';

import 'features/screens/search/search_result.dart';

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