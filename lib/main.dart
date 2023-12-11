import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discountsv2/Navigation/route.dart';
import 'package:mero_discountsv2/screens/about_us/about_us.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';

import 'package:mero_discountsv2/screens/policies_sub_page/policies_page.dart';
import 'package:mero_discountsv2/screens/profile_page/profile_page.dart';
import 'package:mero_discountsv2/screens/settings/settings.dart';
import 'package:mero_discountsv2/screens/about_us/sub_about/sub_about.dart';
import 'package:mero_discountsv2/screens/vendor_about_page/about_vendor.dart';
import 'package:mero_discountsv2/screens/vendor_about_page/vendor_review.dart';

import 'package:mero_discountsv2/screens/notification/notification_screen.dart';

import 'package:mero_discountsv2/screens/vendorpage/item_description.dart';
import 'package:mero_discountsv2/screens/vendorpage/vendor_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home:SettingsPage(),
    );
  }
}

  // Widget build(BuildContext context) {
  //   return  GetMaterialApp(
  //     navigatorKey: navigatorKey,
  //     debugShowCheckedModeBanner: false,
  //     initialRoute: HomePage.routeName,
  //     routes: routes,
  //   );
  // }
// }