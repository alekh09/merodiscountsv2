import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';

import '../core/utils/asset_provider.dart';
import '../core/utils/util.dart';
import '../features/widgets/responsive_text.dart';


class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
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
                        border: Border.all(color: Color(0xffEAEBF0)),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.arrowLeftLong,
                            height: height * 0.02,
                            width: height * 0.02,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ResponsiveText(
                              'Pizza',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics() ,
                      child: Row(
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              Assets.svgImages.sliders,
                              height: height * 0.02,
                              width: width * 0.02,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                            child: Row(
                              children: [
                                ResponsiveText('Sort By',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,),
                                SizedBox(width: 5),
                                SvgPicture.asset(
                                  Assets.svgImages.arrowDown,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                            child: Row(
                              children: [
                                ResponsiveText('With Offers',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,),
                                SizedBox(width: 5),

                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                            child: Row(
                              children: [
                                ResponsiveText('Ratings',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,),
                                SizedBox(width: 5),
                                SvgPicture.asset(
                                  Assets.svgImages.arrowDown,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                            child: Row(
                              children: [
                                ResponsiveText('Sort By',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,),
                                SizedBox(width: 5),
                                SvgPicture.asset(
                                  Assets.svgImages.arrowDown,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xffEAEBF0)),
                            ),
                            child: Row(
                              children: [
                                ResponsiveText('Sort By',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,),
                                SizedBox(width: 5),
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
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: ClipRRect(
                        child: CachedNetworkImage(
                            imageUrl:
                            'https://merodiscounts.com/storage/media/keyword/0v5CDMtgLFcWPgAarx78Ee9gWTD5truYF19HZvMf.png',
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 2),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveText(
                      kVendorsName,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    SizedBox(height: 10),
                    ResponsiveText(
                      "Manbhawan, Kathmandu",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    SizedBox(height: kHorizontalMargin),
                    Row(
                      children: [
                        Expanded(
                          child: ResponsiveText(
                            "30-40 min",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            textColor: Color(0xFF68727D),
                          ),
                        ),
                        SvgPicture.asset(
                          Assets.svgImages.ratingreen
                        ),
                        SizedBox(width: 2),
                        ResponsiveText("4.5/5")
                      ],
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
