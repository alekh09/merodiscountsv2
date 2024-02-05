import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgImages.back_icon
                      ),
                      SizedBox(width: kHorizontalMargin,),
                      ResponsiveText(
                        "FAQ",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 2, color: Color(kBaseLight),),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: kVerticalMargin,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                            // height: height*0.26,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(16),
                              border: Border.all(color: Color(kBaseLight)) 
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ResponsiveText(
                                          "What is MeroDiscounts?",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          textColor: Color(kTextIcon),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        Assets.svgImages.up
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: kVerticalMargin/2,),
                                  ResponsiveText(
                                    "Mero Discounts is an all-in-one online shopping mall, which tends to connect every business to its potential customers. Besides, our main motto is to provide luxuries at the most affordable pricing with exciting deals and discounts.",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                            // height: height*0.26,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(16),
                              border: Border.all(color: Color(kBaseLight)) 
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ResponsiveText(
                                          "What are the sectors where Mero Discounts provides discounts and deals?",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          textColor: Color(kTextIcon),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        Assets.svgImages.down
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}