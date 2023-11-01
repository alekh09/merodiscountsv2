// ignore_for_file: sort_child_properties_last

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../core/constants/string_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: kVerticalMargin),
              Row(
                children: [
                  ResponsiveText(
                    "Location",
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: kHorizontalMargin / 2),
                  SvgPicture.asset(
                    Assets.svgImages.arrowDown,
                    height: height * 0.02,
                    width: height * 0.02,
                  ),
                ],
              ),
              SizedBox(height: kVerticalMargin / 4),
              Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                        kLocation,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                  SizedBox(width: kHorizontalMargin),
                  Container(
                    padding: EdgeInsets.all(kHorizontalMargin),
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xffFFF0EB),
                    ),
                    child: SvgPicture.asset(
                      Assets.svgImages.bell,
                      height: height * 0.05,
                      width: width * 0.05,
                    ),
                  ),
                ],
              ),
              SizedBox(height: kVerticalMargin),
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
                      Assets.svgImages.search,
                      height: height * 0.02,
                      width: width * 0.02,
                    ),
                    // SizedBox(width: width * 0.01),
                    Expanded(
                      child: ResponsiveText('Search "Momo"',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.QR_icon,
                     height: height * 0.02,
                      width: width * 0.02,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin),
              Container(
                height: height * 0.14,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/2),
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: constraints.maxHeight * 0.6,
                              width:  constraints.maxHeight * 0.6,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  imageUrl: 
                                  'https://thumbs.dreamstime.com/b/dumplings-plate-isolated-white-background-tomato-sauce-top-view-black-side-152180863.jpg', 
                              fit: BoxFit.cover
                              ), 
                              borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Flexible(child: ResponsiveText('Momo',
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.justify,
                            ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                  itemCount: 12,
                ),
              ),
              SizedBox(height: kVerticalMargin),
              Container(
                height: height * 0.2,
                width:  width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.8,
                      child: ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: 
                          'https://merodiscounts.com/storage/media/news/desktop/oLlGOcLDJzoZhlNX6om0P0IAKKwnu5D391G4bP6q.jpg', 
                      fit: BoxFit.cover
                      ), 
                      borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  itemCount: 4,
                ),
              ),
             Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveText(
                    kCombo,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    ),
                    ResponsiveText(
                      kSee,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
                height: height * 0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        width: width * 0.6,
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
                            Row(
                              children: [
                                Expanded(
                                  child: ResponsiveText('Combo Newari Set',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  textAlign: TextAlign.left,
                                  ),
                                ),
                                 SvgPicture.asset(
                                  Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                ),
                                ResponsiveText('4.5/5',
                                fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            ResponsiveText('Aagan Cafe',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            ),
                            Row(
                              children: [
                                ResponsiveText('Rs. 1495',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                textColor: Colors.deepOrange[600],
                                ),
                                SizedBox(width:0.9),
                                ResponsiveText('Rs. 1495',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                textColor: kPrimaryColor,
                              
                                decoration: TextDecoration.lineThrough,
                                ),   
                              ],
                            ),
                            ResponsiveText('Sukuti, Sekuwa, Piro Aalu, Badam Sadeko, Aalu tama, Bhutan, Achar, Buff Chhoila, Peanut Sadeko',
                            fontSize: 16,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                  itemCount: 12,
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ResponsiveText(
                      kPopular,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      ),
                  ),
                    ResponsiveText(
                      kSee,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin/2),
              Container(
                height: height * 0.27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        width: width * 0.7,
                        margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                        decoration: BoxDecoration( 
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular( 12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: constraints.maxHeight * 0.6,
                              width:  constraints.maxWidth,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  imageUrl: 
                                  'https://images.pexels.com/photos/3504876/pexels-photo-3504876.jpeg?auto=compress&cs=tinysrgb&w=1600', 
                              fit: BoxFit.cover,
                              ), 
                              borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            SizedBox(height: kHorizontalMargin/2,),
                            ResponsiveText('Chef’s Burger',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            
                            ),
                            ResponsiveText('Chabahil, Kathmandu',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ResponsiveText('30-40 min',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.grey,
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                ),
                                ResponsiveText('4.5/5',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      kOffer,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      
                      ),
                  ),
                    SizedBox(width: width * 0.29),
                    ResponsiveText(
                      kSee,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
                padding: EdgeInsets.all(kVerticalMargin/2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all( color: Colors.black38),
                ),
                child: Row(
                  children: [
                    Container(
                      height: height *0.1,
                      width: height *0.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: 'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText('Hamro Vegan',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText('Kumari Pati, Kathmandu',
                          fontWeight: FontWeight.w400,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ResponsiveText('30-40 min',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: Colors.grey,
                                ),
                              ),
                              SvgPicture.asset(
                                Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                  ),
                                  ResponsiveText('4.5/5',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
                                decoration: BoxDecoration(
                                  color: Color(0xffFC520321,
                                  ).withOpacity(0.13),
                                  borderRadius:BorderRadius.circular(4) 
                                ),
                                child: ResponsiveText('Flat 15% off on all items',
                                textColor: Color(0xffE33E02),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                         ),    
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      kBestSeller,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      ),
                  ),
                    ResponsiveText(
                      kSee,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
                height: height * 0.27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        width: width * 0.7,
                         margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                        decoration: BoxDecoration( 
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: constraints.maxHeight * 0.59,
                              width:  constraints.maxWidth,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  imageUrl: 
                                  'https://images.pexels.com/photos/5409010/pexels-photo-5409010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
                              fit: BoxFit.cover,
                              ), 
                              borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            SizedBox(height: kHorizontalMargin/2,),
                            ResponsiveText('Monster Momo',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            
                            ),
                            ResponsiveText('Mid Baneshwor, Kathmandu',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ResponsiveText('30-40 min',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.grey,
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                ),
                                ResponsiveText('4.5/5',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Container(
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      kFeaturedSeller,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      ),
                  ),
                    SizedBox(width: width * 0.4),
                    ResponsiveText(
                      kSee,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              GridView.builder(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: (width * 0.3) / (height * 0.18), crossAxisSpacing: kHorizontalMargin, mainAxisSpacing: kVerticalMargin),  itemBuilder: (context, index) {
                return Container(
                    child: Column(
                      children: [
                        CachedNetworkImage(imageUrl: 'https://th.bing.com/th/id/OIP.JQAgaDYR9cSr4zO_vOBUCQAAAA?pid=ImgDet&rs=1',
                        ),
                        ResponsiveText('Gurkhaz \n Grill',
                        fontWeight: FontWeight.w500 ,
                        textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    
                  );
              },
              itemCount: 6,
              ),

              SizedBox(height: kHorizontalMargin*2),
              Container(
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveText(
                      kNewtoMeroDiscounts,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      ),
                  ),
                    ResponsiveText(
                      kSee,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kHorizontalMargin,),
              Container(
                height: height * 0.27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        width: width * 0.7,
                        margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                        decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: constraints.maxHeight * 0.59,
                              width:  constraints.maxWidth * 0.7,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  imageUrl: 
                                  'https://images.pexels.com/photos/6408290/pexels-photo-6408290.jpeg?auto=compress&cs=tinysrgb&w=1600', 
                              fit: BoxFit.cover,
                              ), 
                              borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            SizedBox(height: kHorizontalMargin/2,),
                            ResponsiveText('Cake Sansar',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            
                            ),
                            ResponsiveText('Dhapakhel, Kathmandu',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ResponsiveText('30-40 min',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.grey,
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                ),
                                ResponsiveText('4.5/5',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(height: kHorizontalMargin),
              Row(
                children: [
                  ResponsiveText(
                    kBrowseMore,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    ),
                    
                  ],
                ),
              SizedBox(height: kHorizontalMargin),
              Container(
                padding: EdgeInsets.all(kVerticalMargin/2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black38),
                ),
                child: Row(
                  children: [
                    Container(
                      height: height *0.1,
                      width: height *0.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: 'https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText('Hamro Vegan',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          ),
                          ResponsiveText('Kumari Pati, Kathmandu',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ResponsiveText('30-40 min',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                textColor: Colors.grey,
                                ),
                              ),
                              SvgPicture.asset(
                                Assets.svgImages.ratingreen,
                                  height: 14,
                                  width: 14,
                                  ),
                                  ResponsiveText('4.5/5',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ), 
                            ],
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
