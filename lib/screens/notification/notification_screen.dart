import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgImages.back_arrow,
                  ),
                  SizedBox(width: kHorizontalMargin),
                  Expanded(
                    child: ResponsiveText(
                      kNotifications,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ResponsiveText(
                    kMarkAllRead,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textColor: Color(kPrimary),
                  )
                ]
              ),
            ),
            Divider(height: 2,),
            SizedBox(height: kHorizontalMargin,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              child: Column(
                children: [
                  ResponsiveText(
                    "Today",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}