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
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffffefee),
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.coupon_icon,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "50% off on all product on Hakama Sushi. Grab offer now!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: kVerticalMargin,),
            Divider(height: 1, ),
            SizedBox(height: kVerticalMargin,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffE9F8F1),
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.cart_icon,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Your order is confirmed and being prepared!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                ),
              ],
            ),
            SizedBox(height: kVerticalMargin,),
            Divider(height: 1, ),
            SizedBox(height: kVerticalMargin,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xfffdf6ea),
                          // color: Colors.amberAccent
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.info,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Your order is confirmed and being prepared!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                ),
              ],
            ),
            SizedBox(height: kVerticalMargin,),
            Divider(height: 2,),
            SizedBox(height: kHorizontalMargin,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              child: Column(
                children: [
                  ResponsiveText(
                    "Earlier",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffffefee),
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.coupon_icon,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "50% off on all product on Hakama Sushi. Grab offer now!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: kVerticalMargin,),
            Divider(height: 1, ),
            SizedBox(height: kVerticalMargin,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffE9F8F1),
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.cart_icon,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Your order is confirmed and being prepared!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                ),
              ],
            ),
            SizedBox(height: kVerticalMargin,),
            Divider(height: 1, ),
            SizedBox(height: kVerticalMargin,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xfffdf6ea),
                          // color: Colors.amberAccent
                        ),
                        child : SvgPicture.asset(
                          Assets.svgImages.info,
                        ),
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Your order is confirmed and being prepared!",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText(
                            "9:00 AM",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}