import 'package:cached_network_image/cached_network_image.dart';
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
                  )
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
                    color: Color(kSpecialOffer),
                    padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                    height: height * 0.11,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
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

                  // Column(
                  //   children: [
                  //     Container(
                  //       width: height*0.5,
                  //       // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  //       color: Color(kSpecialOffer),
                  //       padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  //       height: height*0.12,
                  //       child: ResponsiveText(kVendorOffers,
                  //       textColor: Colors.white,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w600,
                  //       ),
                        
                  //     ),
                  //   ],
                  // ),
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