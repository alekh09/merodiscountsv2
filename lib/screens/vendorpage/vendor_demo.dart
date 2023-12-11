import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import 'package:mero_discountsv2/screens/vendorpage/main_menu.dart';

class VendorPag extends StatelessWidget {
  const VendorPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kNeutral),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 1),
            
              
            SizedBox(height: kHorizontalMargin,),
            Container(
              color: Color(kPrimaryWhite),
              height: height*0.42,
              child: Column(
                children: [
                  
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(context: context,
                      // backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                        builder: (context){
                          return DraggableScrollableSheet(
                            initialChildSize: 1,
                            minChildSize: .5,
                            builder: (BuildContext context, ScrollController scrollController){
                            return SingleChildScrollView(
                              child: Container(
                                height: height * 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    
                                    SizedBox(height: kVerticalMargin,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ResponsiveText(
                                            "kComboSet",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                          ResponsiveText(kComboDescription,
                                            fontWeight: FontWeight.w400,
                                            textColor: Color(kBaseLight),
                                          ),
                                          SizedBox(height: kVerticalMargin/2),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                Assets.svgImages.ratingreen),
                                                SizedBox(width: kHorizontalMargin/3),
                                                ResponsiveText(
                                                  kRating,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                            ],
                                          ),
                                          SizedBox(width: kHorizontalMargin/2),
                                          Row(
                                            children: [
                                              ResponsiveText(
                                                kPrice,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                textColor: Color(kTextIcon),
                                              ),
                                              SizedBox(width: kHorizontalMargin/3,),
                                              Expanded(
                                                child: ResponsiveText(
                                                  kPrice,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  decoration: TextDecoration.lineThrough,
                                                  textColor: Color(kBaseLight),
                                                ),
                                              ),
                                             Container(
                                                // width: width * 0.4,
                                                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(24),
                                                  border: Border.all(color: Color(0xffEAEBF0))),
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      Assets.svgImages.plus_icon
                                                    ),
                                                    SizedBox(width: kHorizontalMargin/2,),
                                                    ResponsiveText(kAdd,
                                                    fontWeight: FontWeight.w500,
                                                    textColor: Color(0xff252525),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            );
                            },
                          );
                        }
                      );
                    },
                    child: Container(
                      //padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/4),
                      height: height * 0.35,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => LayoutBuilder(
                          builder: (context, constraints) { 
                            return Container(
                              width: height * 0.17,
                              height: height *0.1,
                              margin: EdgeInsets.only(left: index == 0? kHorizontalMargin:kHorizontalMargin/2, right: index == 3? kHorizontalMargin: kHorizontalMargin/2, top: kVerticalMargin/2),
                              decoration: BoxDecoration( 
                                // color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
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
                                ],
                              ),
                            );
                          }
                        ),
                        itemCount: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ],
          ), 
        ),
      ),
    );
  }
}

