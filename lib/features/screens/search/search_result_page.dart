import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/screens/search/vendor_info_under_item_tile.dart';
import 'package:mero_discountsv2/features/screens/search/vendor_with_item_tile.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kHorizontalMargin),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kSearchBorderColor),
                      color: kDefaultIconLightColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.svgImages.arrowLeftLong,
                          height: height * 0.02,
                          width: height * 0.02,
                        ),
                        SizedBox(width:kHorizontalMargin/2),
                        const Expanded(
                          child: ResponsiveText(
                            'Pizza',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kVerticalMargin/2),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: SvgPicture.asset(
                            Assets.svgImages.sliders,
                            height: height * 0.02,
                            width: width * 0.02,
                          ),
                        ),
                        SizedBox(width: kHorizontalMargin/2),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: Row(
                            children: [
                              const ResponsiveText(kSortBy,
                                fontWeight: FontWeight.w600,),
                              SizedBox(width: kHorizontalMargin/4),
                              SvgPicture.asset(
                                Assets.svgImages.arrowDown,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: kHorizontalMargin/2),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: Row(
                            children: [
                              const ResponsiveText(kWithOffers,
                                fontWeight: FontWeight.w600,),
                              SizedBox(width: kHorizontalMargin/4),

                            ],
                          ),
                        ),
                        SizedBox(width: kHorizontalMargin/2),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: Row(
                            children: [
                              const ResponsiveText(kRatings,
                                fontWeight: FontWeight.w600),
                              SizedBox(width: kHorizontalMargin/4),
                              SvgPicture.asset(
                                Assets.svgImages.arrowDown,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: kHorizontalMargin/2),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: Row(
                            children: [
                              const ResponsiveText(kPriceRange,
                                fontWeight: FontWeight.w600,),
                              SizedBox(width: kHorizontalMargin/4),
                              SvgPicture.asset(
                                Assets.svgImages.arrowDown,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width:kHorizontalMargin/2),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kSearchBorderColor),
                          ),
                          child: Row(
                            children: [
                              const ResponsiveText(kSortBy,
                                fontWeight: FontWeight.w600,),
                              SizedBox(width:kHorizontalMargin/4 ),
                              SvgPicture.asset(
                                Assets.svgImages.arrowDown,
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  )
                  


                ],
              ),

            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(height: kVerticalMargin/2),
                      const VendorWithItemTile(),
                      SizedBox(height: kVerticalMargin/8),
                      const VendorInfo(),
                      //SizedBox(height: kVerticalMargin/2),
                      //const VendorInfoOnly()
                    ],
                  );
                },
              )
            ),






          ],

        ),
      ),

    );
  }
}
