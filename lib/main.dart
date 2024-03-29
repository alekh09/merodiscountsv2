import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discountsv2/Navigation/route.dart';
import 'package:mero_discountsv2/screens/about_us/about_us.dart';
import 'package:mero_discountsv2/screens/faq/faq.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';
import 'package:mero_discountsv2/screens/privacy_policy/privacy_policy.dart';
import 'package:mero_discountsv2/screens/termsandconditions/terms_and_conditions.dart';
import 'package:mero_discountsv2/screens/track_order/track_order.dart';
import 'package:mero_discountsv2/screens/change_password/change_password.dart';
import 'package:mero_discountsv2/screens/home_page.dart';
import 'package:mero_discountsv2/screens/more.dart';
import 'package:mero_discountsv2/screens/more_page2.dart';

import 'package:mero_discountsv2/screens/policies_sub_page/policies_page.dart';
import 'package:mero_discountsv2/screens/profile_page/profile_page.dart';
import 'package:mero_discountsv2/screens/profile_page/update_profile/update_profile.dart';
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
      home:HomePage(),

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