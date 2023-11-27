import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class SubAboutPage extends StatelessWidget {
  const SubAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                color: Colors.white,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.cross
                    ),
                    SizedBox(width: kHorizontalMargin,),
                    ResponsiveText(
                      "About",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.about,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "About MeroDiscounts",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Get to know who we are.", 
                            textColor: Color(kBaseLight), 
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgImages.phone_office,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ResponsiveText(
                              "Contact Us",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              // textColor: Colors.,
                            ),
                            ResponsiveText(
                              "Any queries? Reach us right away.", 
                              textColor: Color(kBaseLight), 
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.svgImages.right_more,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                  onTap:(){
                    showModalBottomSheet(context: context,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    isScrollControlled: false,
                    builder: (context) => Wrap(
                      children: [
                        Container(
                          // height: height *0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          margin: EdgeInsets.symmetric( horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ResponsiveText(
                                    "Contact Us",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height:kVerticalMargin*2),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.svgImages.at
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "support@merodiscounts.com",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                          ),
                                          ResponsiveText(
                                            "Mail Us", 
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin/2),
                                Divider(thickness: 1,),
                                SizedBox(height: kVerticalMargin/2),
                                Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.svgImages.phone
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "+977 1 5970389",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                          ),
                                          ResponsiveText(
                                            "Call Us", 
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin/2),
                                Divider(thickness: 1,),
                                SizedBox(height: kVerticalMargin/2),
                                Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.svgImages.phone
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "Gyanodaya Pustaklaya Marg, Jhamsikhel, Lalitpur",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                          ),
                                          ResponsiveText(
                                            "Visit Us", 
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                      ],
                    ),);
                  } ,
                )
              ),
              SizedBox(height: 2,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgImages.thumbs_up,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ResponsiveText(
                              "Follow Us",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              // textColor: Colors.,
                            ),
                            ResponsiveText(
                              "Connect with us on our social media.", 
                              textColor: Color(kBaseLight), 
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.svgImages.right_more,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                  onTap: () {
                    showModalBottomSheet(context: context,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        ),
                      ),
                      isScrollControlled: false,
                      builder: (context)=> Wrap( children: [
                        Container(
                          // height: height *0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          margin: EdgeInsets.symmetric( horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ResponsiveText(
                                    "Follow us for more update",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height:kVerticalMargin*2),
                              Row(
                                children: [
                                  Image.asset(
                                    Assets.images.facebook,
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "Mero Discounts",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                          ),
                                          ResponsiveText(
                                            "Like us on Facebook", 
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                  ),
                                    SvgPicture.asset(
                                      Assets.svgImages.right_more
                                    ),
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin,),
                                Row(
                                children: [
                                  Image.asset(
                                    Assets.images.instagram,
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "Mero Discounts",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                          ),
                                          ResponsiveText(
                                            "Like us on Instagram", 
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                  ),
                                    SvgPicture.asset(
                                      Assets.svgImages.right_more
                                    ),
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin,),
                                Row(
                                children: [
                                  Image.asset(
                                    Assets.images.twitter,
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "Mero Discounts",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                          ),
                                          ResponsiveText(
                                            "Like us on Twitter", 
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                  ),
                                    SvgPicture.asset(
                                      Assets.svgImages.right_more
                                    ),
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin,),
                                Row(
                                children: [
                                  Image.asset(
                                    Assets.images.youtube,
                                  ),
                                  SizedBox(width: kHorizontalMargin),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ResponsiveText(
                                        "Mero Discounts",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                          ),
                                          ResponsiveText(
                                            "Like us on Youtube", 
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          )
                                        ],
                                      ),
                                  ),
                                    SvgPicture.asset(
                                      Assets.svgImages.right_more
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
                )
              ),
              SizedBox(height: 2,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgImages.star_half_stroke,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ResponsiveText(
                              "Rate Us",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              // textColor: Colors.,
                            ),
                            ResponsiveText(
                              "How is our services? Let us know.",
                              textColor: Color(kBaseLight), 
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.svgImages.right_more,
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                  onTap: (){
                    showModalBottomSheet(context: context, 
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    isScrollControlled: false,
                    builder: (context) => Wrap(children: [
                      Container(
                        // color: Colors. white,
                        height: height *0.4,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                        child: Column(
                          children: [

                          ],
                        ),
                      ),
                    ],)
                    );
                  },
                )
              ),
            ]
          )),
      ),
    );
  }
}