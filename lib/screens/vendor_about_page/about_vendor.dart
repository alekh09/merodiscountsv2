import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class AboutVendor extends StatelessWidget {
  const AboutVendor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://merodiscounts.com/storage/media/vendor/vendor_banner_image/makai_restaurant_1695278466.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10, // Adjust the top position of the icon as needed
                    left: 10, // Adjust the left position of the icon as needed
                    child:Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  
                ],
              ),
              // SizedBox(),
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
                    height: height *0.25,
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
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.svgImages.black_rating,
                          ),
                          SizedBox(width: kVerticalMargin/3,),
                          ResponsiveText(
                            kVendorRatings,
                            textColor: Color(kTextIcon),
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      ResponsiveText(
                        kVendorDeliverTime,
                        textColor: Color(kBaseLight),
                        fontWeight: FontWeight.w400,
                      ),
                      Container(
                        height: kHorizontalMargin * 1.9,
                        decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(8)
                        ),
                       padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/4),
                        child: 
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.svgImages.clock
                            ),
                            SizedBox(width: kHorizontalMargin / 3),
                            ResponsiveText(
                              kOpeningHours,
                              fontWeight: FontWeight.w500,
                              textColor: Color(kTextIcon),
                              ),
                              SizedBox(width: kHorizontalMargin/3),
                              ResponsiveText(
                              kOpenNow,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                color: Colors.white,
                child: Container(
                  // color: Colors.amber,
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  child: Row(
                    children: [
                      ResponsiveText(
                        kPhotos,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: kVerticalMargin/3),
                      ResponsiveText(
                        kCustomerReview,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(width: kVerticalMargin/3),
                      ResponsiveText(
                        kAbout,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 2,),
              Container(
                // height: height *0.4,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Row(
                        children: [
                          Expanded(
                            child: ResponsiveText(
                              kPhotos,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          ResponsiveText(
                            kSee,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kTextIcon),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,),
                      // color: Colors.amber,
                      height: height *0.36,
                      width: height *0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedNetworkImage(
                               imageUrl: 'https://images.pexels.com/photos/7363680/pexels-photo-7363680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                               fit: BoxFit.cover,
                            ),
                          ),
                          
                          SizedBox(height: kVerticalMargin/2,),
                          ResponsiveText(
                            "All",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          ResponsiveText(
                            "25 Photos",
                            fontWeight: FontWeight.w400,
                            textColor: Color(kBaseLight),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                height: height *0.36,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Row(
                        children: [
                          Expanded(
                            child: ResponsiveText(
                              kCustomerReview,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          ResponsiveText(
                            kSee,
                            fontWeight: FontWeight.w400,
                            textColor: Color(kTextIcon),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,),
                      padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin,
                      vertical: kVerticalMargin,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffEAEBF0)),
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
                                    Row(
                                      children: [
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
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2,),
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
              SizedBox(height: kVerticalMargin),
              Container(
                // height: height *0.4,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ResponsiveText(
                                kAboutTheRestaurant,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2),
                          ResponsiveText(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc feugiat sed mi ac facilisis. Phasellus feugiat id justo quis ultrices. Nullam vitae sem varius tellus consectetur lacinia in non dui. Integer felis odio, suscipit eget mi eu, consequat malesuada tellus. In magna justo, tempus sodales tristique ac, mattis ac lorem. Vivamus non enim in massa egestas sagittis non in felis. Sed justo enim, ultrices sed metus quis, dictum aliquet libero. Curabitur commodo erat sit amet sem eleifend porta. Pellentesque ultrices urna at scelerisque fermentum.",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            maxLines: 5,
                            textOverflow: TextOverflow.ellipsis,
                            textColor: Color(kBaseLight),
                          ),
                          SizedBox(height: kVerticalMargin/2,),
                          Row(
                            children: [
                              ResponsiveText(
                                kReadMore,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                textColor: Color(kPrimary),
                              ),
                              SizedBox(width: kHorizontalMargin/2,),
                              SvgPicture.asset(
                                Assets.svgImages.right
                              ),
                            ],
                          )
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin),
              Container(
                // height: height * 0.53,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Row(
                        children: [
                          ResponsiveText(
                            kSimilarRestaurants,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                    Container(
                // color: Colors.amber,
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                child: Container(
                  height: height * 0.42,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: width * 0.35,
                           margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 3? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
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
                                    'https://th.bing.com/th/id/R.dbdc157c3140e23201902818fadb9269?rik=gLE6XchXDb9Inw&riu=http%3a%2f%2fphotos.demandstudios.com%2fgetty%2farticle%2f176%2f236%2f513067186.jpg&ehk=Z46upGk8L3xrLfkathwCqK8gL2PM%2frnpAq46fsYqslc%3d&risl=&pid=ImgRaw&r=0', 
                                fit: BoxFit.cover,
                                ), 
                                borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              SizedBox(height: kHorizontalMargin/2,),
                              ResponsiveText('Go Foodie Cafe',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              
                              ),
                              ResponsiveText('Jhamsikhel, Lalitpur',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: Color(kBaseLight),
                              ),
                              
                                  ],
                                ),
                              );
                            }
                          ),
                          itemCount: 4,
                        ),
                      ),
                    ),   
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                // height: height *0.4,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      child: Row(
                        children: [
                          ResponsiveText(
                            kSimilarRestaurants,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                    Container(
                // color: Colors.amber,
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                child: Container(
                  height: height * 0.27,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: width * 0.6,
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