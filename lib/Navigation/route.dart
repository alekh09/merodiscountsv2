
import 'package:flutter/material.dart';
import 'package:mero_discountsv2/screens/about_us/about_us.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';

final Map<String, WidgetBuilder> routes = {
  AboutUs().routeName: (context) => const AboutUs(),
  MorePage().routeName: (context) => const MorePage(),
  HomePage().routeName: (context) => const HomePage(),

};