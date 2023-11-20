import 'package:flutter/material.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';
import 'package:mero_discountsv2/screens/notification/notification_screen.dart';
import 'package:mero_discountsv2/screens/vendorpage/item_description.dart';
import 'package:mero_discountsv2/screens/vendorpage/vendor_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomePage(),
    );
  }
}