import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class VendorPage extends StatelessWidget {
  const VendorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kNeutral),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height*0.2,
              child: ClipRRect(
                child: 
                CachedNetworkImage(
                  imageUrl: 'https://merodiscounts.com/storage/media/vendor/vendor_banner_image/makai_restaurant_1695278466.jpg',
                fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
            padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              height: height*0.15,
              decoration:  BoxDecoration(
                color: Color(kPrimaryWhite),
                // color: Colors.amber,
                // border: Border(bottom: BorderSide(color: Colors.black)),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
                ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CachedNetworkImage(imageUrl: 'https://merodiscounts.com/storage/media/user/MwXmBjs0lyxar0Y1CjwxDXrpQjazM0lxad7zM8I8.png',
                  height: height *0.1,
                  // width: height,
                  ),
                  SizedBox(width: kHorizontalMargin),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ResponsiveText(
                      KVendorName,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      textColor: Color(kTextIcon),
                    ),
                    ResponsiveText(
                      kVendorAddress,
                      textColor: Color(kTextIcon),
                      fontWeight: FontWeight.w400,
                    ),
                    ResponsiveText(
                      kVendorRatings,
                      textColor: Color(kTextIcon),
                      fontWeight: FontWeight.w400,
                    ),
                    ResponsiveText(
                      kVendorDeliverTime,
                      textColor: Color(kBaseLight),
                      fontWeight: FontWeight.w400,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(8)
                      ),
                     padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/4),
                      child: ResponsiveText(
                        kOpenedStatus,
                        fontWeight: FontWeight.w500,
                        textColor: Color(kPrimary),
                    ),
                    ),
                  ],
                ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              height: height*0.12,
              width: height*1,
              color: Color(kPrimaryWhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveText(
                    kMultipleVendorOrder,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    textColor: Color(kTextIcon),
                  ),
                  SizedBox(height: kVerticalMargin/3,),
                  Container(
                    width: width * 0.4,
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0xffEAEBF0))),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 15,
                        backgroundImage: 
                          NetworkImage('https://merodiscounts.com/storage/media/user/MwXmBjs0lyxar0Y1CjwxDXrpQjazM0lxad7zM8I8.png',
                        ),
                        ),
                        SizedBox(width: kHorizontalMargin/2,),
                        ResponsiveText(KVendorName,
                        fontWeight: FontWeight.w500,
                        textColor: Color(0xff252525),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
            ),
            SizedBox(height: kHorizontalMargin,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              color: Color(kPrimaryWhite),
              height: height*0.2,
              width: height*1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveText(KSpecialOffersForYou,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  textColor: Color(kTextIcon),
                  ),
                  SizedBox(height: kHorizontalMargin,),
                  Container(
                    width: height * 0.5,
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    height: height * 0.11,
                    decoration: BoxDecoration(color: Color(kSpecialOffer),borderRadius: BorderRadius.circular(16)),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                        children: [
                          ResponsiveText(
                            kVendorOffers,
                            textColor: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: kVerticalMargin / 3), // Add spacing between texts
                          ResponsiveText(
                            'Buy any 2 items from menu and get instantly 1 pound cake free.',
                            textColor: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kHorizontalMargin,),
            Container(
              color: Color(kPrimaryWhite),
              height: height*0.42,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ResponsiveText(
                          kCombo,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          textColor: Color(kTextIcon),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/4),
                    height: height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            width: height * 0.17,
                            height: height *0.1,
                            margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, ),
                            decoration: BoxDecoration( 
                              // color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ignore: sized_box_for_whitespace
                                Container(
                                  height: constraints.maxHeight * 0.5,
                                  width:  constraints.maxHeight * 0.7,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                      imageUrl: 
                                      'https://merodiscounts.com/storage/media/service/We2OKq1JcdvjjQVqfc0Owl9vH4It1HnNCH0QOb4S.jpg', 
                                  fit: BoxFit.cover
                                  ), 
                                  borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                SizedBox(height: kHorizontalMargin/2,),
                                SvgPicture.asset(
                                  Assets.svgImages.redbutton,
                                  height: height * 0.02,
                                  width: width * 0.02,
                                ),
                                ResponsiveText(kComboSet,
                                fontWeight: FontWeight.w700,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                  Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                ),
                                ResponsiveText(kRating,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ResponsiveText(kPrice ,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    textColor: Colors.deepOrange[600],
                                    ),
                                    SizedBox(width:kHorizontalMargin/4),
                                    ResponsiveText(kPrice,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    textColor: Color(kBaseLight),
                                    decoration: TextDecoration.lineThrough,
                                    ),   
                                  ],
                                ),
                                ResponsiveText(kComboDescription,
                                fontSize: 12,
                                maxLines: 2,
                                textColor: Color(kBaseLight),
                                textOverflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          );
                        }
                      ),
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kHorizontalMargin,),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              height: height*0.1,
              width: height,
              decoration:  BoxDecoration(
                color: Color(kPrimaryWhite),
             ),
             child: ResponsiveText(kMainMenu,
             fontSize: 18,
             fontWeight: FontWeight.w700,
             textColor: Color(kTextIcon),
             ),
            ),
            Container(
                /// Need to work on the sorting of the menu
            ),
            SizedBox(height:1),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              // height: height*0.2,
              // width: height ,
              decoration:  BoxDecoration(
                color: Color(kPrimaryWhite),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CupertinoSwitch( 
                        value: true,
                        onChanged :(value){
                          false;
                        }
                      ),
                      SizedBox(width: kVerticalMargin/3),
                      ResponsiveText(kVegOnly,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: Color(kTextIcon),
                      ),
                    ],
                  ),
                  SizedBox(height: kHorizontalMargin,),
                  Row(
                    children: [
                      ResponsiveText(
                        KVendorName,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                      ),
                    ],
                  ),
                  SizedBox(height: kHorizontalMargin,),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.green_button,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ResponsiveText(
                            kItemName,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            textColor: Color(kTextIcon),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.ratingreen
                          ),
                          SizedBox(width: kHorizontalMargin/3),
                          ResponsiveText(kRating,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ResponsiveText(kPrice,
                              fontWeight: FontWeight.w700,
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
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height:1),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              decoration:  BoxDecoration(
                color: Color(kPrimaryWhite),
              ),
              child: Column(
                children: [
                  SizedBox(height: kHorizontalMargin,),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.redbutton,
                          ),
                        ],
                      ),
                      SizedBox(width: kHorizontalMargin),
                      Row(
                        children: [
                          ResponsiveText(
                            kItemName,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            textColor: Color(kTextIcon),
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          ResponsiveText(
                            kItemDescription,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                            // maxLines: 2,
                            // textOverflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(width: kHorizontalMargin/3),
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.ratingreen
                          ),
                          SizedBox(width: kHorizontalMargin/3),
                          ResponsiveText(kRating,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ResponsiveText(kPrice,
                              fontWeight: FontWeight.w700,
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
                          )
                        ],
                      ),
                    ],
                  )
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