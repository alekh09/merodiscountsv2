import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';

import '../core/constants/color_constants.dart';
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
                                ResponsiveText('Price Range',
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
              SizedBox(height: 7),
              Container(
                height: height * 0.4,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: width * 0.5,
                          margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                height: constraints.maxHeight * 0.6,
                                width:  constraints.maxHeight * 0.6,
                                child: ClipRRect(
                                  child: CachedNetworkImage(
                                      imageUrl:
                                      'https://merodiscounts.com/storage/media/user/yDl7mzeQztx50aDq1aJO2jSKtWP8hSFDKFH28WHf.jpg',
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              SizedBox(height: kHorizontalMargin/2,),
                              SvgPicture.asset(
                                Assets.svgImages.green_button,
                                height: height * 0.015,
                                width: width * 0.015,
                              ),
                              ResponsiveText('Mushroom Pizza',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.svgImages.ratingreen,
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(width: 3),
                                  ResponsiveText('4.5/5',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              ResponsiveText('Rs. 250',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                textColor: Colors.black,
                              ),

                            ],
                          ),
                        );
                      }
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 1),
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
                    SizedBox(height:6),
                    ResponsiveText(
                      "Manbhawan, Kathmandu",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    SizedBox(height: 5),
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
                        Row(
                          children: [
                            SvgPicture.asset(
                                Assets.svgImages.ratingreen
                            ),
                            SizedBox(width: 2),
                            ResponsiveText("4.5/5")
                          ],
                        )
                      ],
                    ),


                  ],
                ),

              ),
              SizedBox(height: 7),
              Container(
                height: height * 0.4,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: width * 0.5,
                          margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                          decoration: BoxDecoration(
                            // color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                height: constraints.maxHeight * 0.6,
                                width:  constraints.maxHeight * 0.6,
                                child: ClipRRect(
                                  child: CachedNetworkImage(
                                      imageUrl:
                                      'https://merodiscounts.com/storage/media/user/o0u6uLWoeFNdI24NX6UXS9kLxLRJKzVVSZBa2hA1.jpg',
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              SizedBox(height: kHorizontalMargin/2,),
                              SvgPicture.asset(
                                Assets.svgImages.redbutton,
                                height: height * 0.015,
                                width: width * 0.015,
                              ),
                              ResponsiveText('Spicy Margherita Chicken Pizza',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.svgImages.ratingreen,
                                    height: 14,
                                    width: 14,
                                  ),
                                  SizedBox(width: 3),
                                  ResponsiveText('4.5/5',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              ResponsiveText('Rs. 250',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                textColor: Colors.black,
                              ),

                            ],
                          ),
                        );
                      }
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(height: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveText(
                      'Monster Meal',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    SizedBox(height:6),
                    ResponsiveText(
                      "Jhamshikhel, Lalitpur",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    SizedBox(height: 5),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ResponsiveText(
                            "30-40 min",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            textColor: Color(0xFF68727D),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                Assets.svgImages.ratingreen
                            ),
                            SizedBox(width: 2),
                            ResponsiveText("4.5/5")
                          ],
                        )
                      ],
                    ),


                  ],
                ),

              ),
              SizedBox(height: 7),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      child: CachedNetworkImage(
                        imageUrl: 'https://merodiscounts.com/storage/media/user/jIuemVzhSqK2XHejb7ipE8YeJ8SC4JebYbXB5UTq.png',
                        fit: BoxFit.cover,
                        height:160 ,
                        width: 342,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    SizedBox(height: 5),
                    ResponsiveText(
                      'Laliz Pizza',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    SizedBox(height:6),
                    ResponsiveText(
                      "Chabahil, Kathmandu",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    SizedBox(height: 5),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ResponsiveText(
                            "30-40 min",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            textColor: Color(0xFF68727D),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                Assets.svgImages.ratingreen
                            ),
                            SizedBox(width: 2),
                            ResponsiveText("4.5/5")
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              )





            ],

          ),
        ),
      ),

    );
  }
}
