import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class kVendorRating extends StatelessWidget {
  const kVendorRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                height: height*0.2,
                decoration:  BoxDecoration(
                  color: Color(kPrimaryWhite),
                  ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Assets.svgImages.back_icon
                        ),
                        SizedBox(width: kVerticalMargin*6),
                        ResponsiveText(
                          kRatingAndReview,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        )
                      ],
                    ),
                    SizedBox(height: kVerticalMargin,),
                    Divider(height: 2,),
                    SizedBox(height:  kVerticalMargin),
                    ResponsiveText(
                      "4/5",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    ResponsiveText(
                      "(23 Reviews)",
                      fontWeight: FontWeight.w400,
                      textColor: Color(kBaseLight),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.rating_stars
                    )
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                height: height *0.3,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,),
                      padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin,
                      vertical: kVerticalMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/OIP._QqfIuQvJfQIMJDZKbOASwHaHZ?pid=ImgDet&rs=1',
                                  ),
                                ),
                                SizedBox(width: kHorizontalMargin / 2),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ResponsiveText(
                                      kCustomerName,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      textColor: Color(0xff252525),
                                    ),
                                    ResponsiveText(
                                      kDate,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      textColor: Color(kBaseLight),
                                    ),
                                 
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2,),
                          Row(
                            children: [
                              Expanded(
                                child: ResponsiveText(
                                  "Family Combo x 1",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SvgPicture.asset(
                               Assets.svgImages.ratingreen
                              ),
                              ResponsiveText(
                                kRating,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          
                          ResponsiveText(
                            "Fusce a consectetur velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin vitae ex neque.",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                          SizedBox(height: kVerticalMargin/2,),
                          Container(
                            // height: width *0.2,
                            // width: height *0.2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                                SizedBox(width: kVerticalMargin),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                                SizedBox(width: kVerticalMargin),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
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
              ),
              SizedBox(height: kVerticalMargin/2,),
              Container(
                height: height *0.3,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,),
                      padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin,
                      vertical: kVerticalMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/OIP._QqfIuQvJfQIMJDZKbOASwHaHZ?pid=ImgDet&rs=1',
                                  ),
                                ),
                                SizedBox(width: kHorizontalMargin / 2),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ResponsiveText(
                                      kCustomerName,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      textColor: Color(0xff252525),
                                    ),
                                    ResponsiveText(
                                      kDate,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      textColor: Color(kBaseLight),
                                    ),
                                 
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2,),
                          Row(
                            children: [
                              Expanded(
                                child: ResponsiveText(
                                  "Family Combo x 1",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SvgPicture.asset(
                               Assets.svgImages.ratingreen
                              ),
                              ResponsiveText(
                                kRating,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          
                          ResponsiveText(
                            "Fusce a consectetur velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin vitae ex neque.",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          ),
                          SizedBox(height: kVerticalMargin/2,),
                          Container(
                            // height: width *0.2,
                            // width: height *0.2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                                SizedBox(width: kVerticalMargin),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
                                      ),
                                  ),
                                ),
                                SizedBox(width: kVerticalMargin),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0',
                                      fit: BoxFit.cover,
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
              ),             
            ],
          ),
        ),
      ),
    );
  }
}