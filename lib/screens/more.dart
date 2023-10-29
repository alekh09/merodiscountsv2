import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key}); // Fixed the constructor

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
                height: 140,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column( // Changed to Column to stack widgets vertically
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ResponsiveText(
                      KProfile,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    // SizedBox(height: 2),
                    const ResponsiveText(
                      "Login or Sign Up to view your complete profile.",
                      fontWeight: FontWeight.w400,
                    ),
                    // SizedBox(height: kVerticalMargin),
                    Container(
                      constraints: const BoxConstraints(maxWidth:400, maxHeight: 100),
                      child: SizedBox(
                        width: 450,
                        height: 43,
                        child: ElevatedButton(
                          onPressed: () {
                            //
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: const Color(0xffFFF0EB), // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(fontSize: 16,
                            color: Color(0xffFC4704)
                            ),
                          ),
                        ),
                      ),
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
