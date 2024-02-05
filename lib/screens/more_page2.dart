import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class More_page2 extends StatelessWidget {
  const More_page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          height: height *0.1,
                          width: height *0.1,
                          decoration: BoxDecoration(color: Korange,
                          borderRadius: BorderRadius.circular(50)
                          ),
                          // child: ResponsiveText(kName),
                        ),
                        SizedBox(width: kHorizontalMargin), 
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ResponsiveText(
                              KProfileName,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            ResponsiveText(
                              kPhonenumber,
                              fontWeight: FontWeight.w400,
                            ),
                            ResponsiveText(
                              kEmail,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

              const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                        Assets.svgImages.coupon,
                        height:  20,
                        width: 20,
                      ),
                      SizedBox(width: kHorizontalMargin*2),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ResponsiveText(Kcoupon,
                             fontWeight: FontWeight.w700,
                             fontSize: 16,
                             ),
                            ResponsiveText("Get offers on every coupons purchased.",
                             fontWeight: FontWeight.w400,
                             textColor: Color(0xff5E656E),
                             ),
                          ],
                        ),
                      ),
                       Row(
                        children: [
                          SvgPicture.asset(
                          Assets.svgImages.showmore,
                          height: 16,
                          width: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox( height: kHorizontalMargin),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.invitefriends,
                            height:  20,
                            width: 20,
                          ),
                          SizedBox(width: kHorizontalMargin*2),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ResponsiveText(Kinvite,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 16,
                                 ),
                                ResponsiveText("Share this app to your friends and relatives.",
                                 fontWeight: FontWeight.w400,
                                 textColor: Color(0xff5E656E),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.showmore,
                            height: 16,
                            width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:kHorizontalMargin),
                    child: const Divider(height: 1, color: Colors.black, ),
                  ),
                ], 
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.about,
                            height:  20,
                            width: 20,
                          ),
                          SizedBox(width: kHorizontalMargin*2),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ResponsiveText(KAbout,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 16,
                                 ),
                                ResponsiveText("Get to know who we are.",
                                 fontWeight: FontWeight.w400,
                                 textColor: Color(0xff5E656E),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.showmore,
                            height: 16,
                            width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:kHorizontalMargin),
                    child: const Divider(height: 1, color: Colors.black, ),
                  ),
                ], 
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.policies,
                            height:  20,
                            width: 20,
                          ),
                          SizedBox(width: kHorizontalMargin*2),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ResponsiveText(Kpolicies,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 16,
                                 ),
                                ResponsiveText("We got you bounded.",
                                 fontWeight: FontWeight.w400,
                                 textColor: Color(0xff5E656E),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.showmore,
                            height: 16,
                            width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:kHorizontalMargin),
                    child: const Divider(height: 1, color: Colors.black, ),
                  ),
                ], 
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.faq,
                            height:  20,
                            width: 20,
                          ),
                          SizedBox(width: kHorizontalMargin*2),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ResponsiveText(Kfaq,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 16,
                                 ),
                                ResponsiveText("Got questions? We’ve got answered!",
                                 fontWeight: FontWeight.w400,
                                 textColor: Color(0xff5E656E),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.showmore,
                            height: 16,
                            width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:kHorizontalMargin),
                    child: const Divider(height: 1, color: Colors.black, ),
                  ),
                ], 
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    height: 100,
                    decoration: const BoxDecoration(color:  Colors.white),
                    child: Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.settings,
                            height:  20,
                            width: 20,
                          ),
                          SizedBox(width: kHorizontalMargin*2),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ResponsiveText(Ksetting,
                                 fontWeight: FontWeight.w700,
                                 fontSize: 16,
                                 ),
                                ResponsiveText("Take control and make the app truly yours.",
                                 fontWeight: FontWeight.w400,
                                 textColor: Color(0xff5E656E),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                            Assets.svgImages.showmore,
                            height: 16,
                            width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ], 
              ),
            ],
          ),
        ),
      ),
    );
  }
}