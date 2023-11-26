import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class SubAboutPage extends StatelessWidget {
  const SubAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                color: Colors.white,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.cross
                    ),
                    SizedBox(width: kHorizontalMargin,),
                    ResponsiveText(
                      "About",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.about,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "About MeroDiscounts",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Get to know who we are.", 
                            textColor: Color(kBaseLight), 
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2,),
              Container(
              color: Color(kPrimaryWhite),
              // height: height,
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
                              child: 
                              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.phone_office,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
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
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                )
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
                            return 
                            Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.phone_office,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
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
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                )
              );
                    //         Container(
                    //           width: height * 0.17,
                    //           height: height *0.1,
                    //           margin: EdgeInsets.only(left: index == 0? kHorizontalMargin:kHorizontalMargin/2, right: index == 3? kHorizontalMargin: kHorizontalMargin/2, top: kVerticalMargin/2),
                    //           decoration: BoxDecoration( 
                    //             // color: Colors.amberAccent,
                    //             borderRadius: BorderRadius.circular(8),
                    //           ),
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                                  
                                  
                    //   Expanded(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       ResponsiveText(
                    //         "Contact Us",
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w700,
                    //         // textColor: Colors.,
                    //       ),
                    //       ResponsiveText(
                    //         "Any queries? Reach us right away.", 
                    //         textColor: Color(kBaseLight), 
                    //         fontSize: 14,
                    //         fontWeight: FontWeight.w400,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    //             ],
                    //           ),
                    //         );
              //       Container(
              //   padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              //   // height: 100,
              //   width: double.infinity,
              //   decoration: BoxDecoration(color: Colors.white),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         Assets.svgImages.phone_office,
              //         height: 20,
              //         width: 20,
              //       ),
              //       SizedBox(width: kHorizontalMargin),
              //       Expanded(
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             ResponsiveText(
              //               "Contact Us",
              //               fontSize: 16,
              //               fontWeight: FontWeight.w700,
              //               // textColor: Colors.,
              //             ),
              //             ResponsiveText(
              //               "Any queries? Reach us right away.", 
              //               textColor: Color(kBaseLight), 
              //               fontSize: 14,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SvgPicture.asset(
              //         Assets.svgImages.right_more,
              //         height: 20,
              //         width: 20,
              //       ),
              //     ],
              //   )
              // );
                          }
                        ),
                        // itemCount: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 2,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.thumbs_up,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Follow Us",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Connect with us on our social media.", 
                            textColor: Color(kBaseLight), 
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                )
              ),
              SizedBox(height: 2,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.star_half_stroke,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Rate Us",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "How is our services? Let us know.",
                            textColor: Color(kBaseLight), 
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svgImages.right_more,
                      height: 20,
                      width: 20,
                    ),
                  ],
                )
              ),
            ]
          )),
      ),
    );
  }
}