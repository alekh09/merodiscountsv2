import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  get routeName => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveText(
          "About Us",
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      height: height*0.25,
                      width: height*0.2,
                      child: ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: 'https://merodiscounts.com/frontend/images/about-1.jpg',
                          fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            topRight: Radius.circular(24)
                          ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                      height: height*0.25,
                      width: height*0.2,
                      child: ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: 'https://merodiscounts.com/frontend/images/about-2.jpg',
                          fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(24),
                            topLeft: Radius.circular(24)
                          ),
                      ),
                    ),
                    
                  ], 
                ),
              ),
              Container(
                // height: height *0.45,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ResponsiveText(
                                "About MeroDiscounts",
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                textColor: Color(0xff252525),
                              ),
                              SizedBox(height: kVerticalMargin/2,),
                              ResponsiveText(
                                kAbout1,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                textColor: Color(kBaseLight),
                              ),
                              SizedBox(height: kVerticalMargin),
                              ResponsiveText(
                                kAbout2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                textColor: Color(kBaseLight),
                              ),
                          ],
                              ),
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ResponsiveText(
                      kOurKeyFeatures,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: Color(kTextIcon),
                    ),
                    SizedBox(height: kVerticalMargin,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          height: height*0.3,
                          width: height*0.19,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24), 
                            bottomRight: Radius.circular(24)
                          ),
                          border: Border.all(color: Color(kBaseLight)) 
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2,vertical: kVerticalMargin/2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: 'https://merodiscounts.com/frontend/images/application.png'),
                                SizedBox(height: kVerticalMargin/2),
                                ResponsiveText(
                                  kAllInOneApplication,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: Color(kTextIcon),
                                ),
                                SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  "First time in Nepal!! An app that provides the customers with everything that they need in a single app with exciting offers and deals.",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: Color(kBaseLight),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          height: height*0.3,
                          width: height*0.19,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24), 
                            bottomRight: Radius.circular(24)
                          ),
                          border: Border.all(color: Color(kBaseLight)) 
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2,vertical: kVerticalMargin/2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: 'https://merodiscounts.com/frontend/images/network.png'),
                                SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  kEstablishingConnection,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: Color(kTextIcon),
                                ),
                                SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  "Connecting every local vendor with their potential customers through our application.",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: Color(kBaseLight),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          height: height*0.26,
                          width: height*0.19,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24), 
                            bottomRight: Radius.circular(24)
                          ),
                          border: Border.all(color: Color(kBaseLight)) 
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2,vertical: kVerticalMargin/2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: 'https://merodiscounts.com/frontend/images/megaphone.png'),
                                  SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  kBusinessPromotion,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: Color(kTextIcon),
                                ),
                                SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  "Promoting new businesses through our digital platforms, website, and application.",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: Color(kBaseLight),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          height: height*0.26,
                          width: height*0.19,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24), 
                            bottomRight: Radius.circular(24)
                          ),
                          border: Border.all(color: Color(kBaseLight)) 
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2,vertical: kVerticalMargin/2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: 'https://merodiscounts.com/frontend/images/customer-service.png'),
                                  SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  kCustomerFocused,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: Color(kTextIcon),
                                ),
                                SizedBox(height: kVerticalMargin/2,),
                                ResponsiveText(
                                  "Our business plan is completely focused on the welfare and better shopping experience of the customers.",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: Color(kBaseLight),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // height: height *0.45,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ResponsiveText(
                                kWhatWeEnsure,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                textColor: Color(0xff252525),
                              ),
                              SizedBox(height: kVerticalMargin/2,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "All your needs in a single application",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                              SizedBox(height: kVerticalMargin/2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "Secure payment solutions.",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                              SizedBox(height: kVerticalMargin/2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "Lowest price of every product available in the market.",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                              SizedBox(height: kVerticalMargin/2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "Deals and offers with every purchase.",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                              SizedBox(height: kVerticalMargin/2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "Fast Delivery",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                              SizedBox(height: kVerticalMargin/2),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: kHorizontalMargin/2),
                                  ResponsiveText(
                                    "Seamless options and choices for customers.",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    // textColor: Color(kBaseLight),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ListView(
              // ListView.builder(
              //   itemCount: 4,
              //   // shrinkWrap: true,
              //   // physics: NeverScrollableScrollPhysics(),
              //   itemBuilder: (BuildContext context, int index) { 
              //     Container(
              //     // height: height *0.45,
              //     color: Colors.white,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Container(
              //           margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,),
              //           padding: EdgeInsets.symmetric(
              //           horizontal: kHorizontalMargin,
              //           vertical: kVerticalMargin,
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               Column(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   ResponsiveText(
              //                     kOurMotive,
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.w700,
              //                     textColor: Color(0xff252525),
              //                   ),
              //                   SizedBox(height: kVerticalMargin/2,),
              //                   Container(
              //                     // margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              //                     height: height*0.26,
              //                     width: height*0.55,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.only(
              //                       topLeft: Radius.circular(24), 
              //                       bottomRight: Radius.circular(24)
              //                     ),
              //                     border: Border.all(color: Color(kBaseLight)) 
              //                     ),
              //                     child: Container(
              //                       padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
              //                       child: Column(
              //                         mainAxisAlignment: MainAxisAlignment.start,
              //                         crossAxisAlignment: CrossAxisAlignment.start,
              //                         children: [
              //                           CachedNetworkImage(
              //                             imageUrl: 'https://merodiscounts.com/frontend/images/shopping.png'),
              //                             SizedBox(height: kVerticalMargin/2,),
              //                           ResponsiveText(
              //                             kCustomerFocused,
              //                             fontSize: 16,
              //                             fontWeight: FontWeight.w700,
              //                             textColor: Color(kTextIcon),
              //                           ),
              //                           SizedBox(height: kVerticalMargin/2,),
              //                           ResponsiveText(
              //                             "Our business plan is completely focused on the welfare and better shopping experience of the customers.",
              //                             fontSize: 12,
              //                             fontWeight: FontWeight.w400,
              //                             textColor: Color(kBaseLight),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   );
              //    },
                
              // ),
            ],
          ),
        ),
      ),
    );
  }
}