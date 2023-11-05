import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class Itemdescription extends StatelessWidget {
  const Itemdescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kPrimaryWhite),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
              children: [
                Container(
                  height: height * 0.26,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://merodiscounts.com/storage/media/user/OAyO7OFc08vqwHJS4PT5OMHRVVOhMYOZcmz0ZZKJ.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10, // Adjust the top position of the icon as needed
                  left: 10, // Adjust the left position of the icon as needed
                  child:Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ResponsiveText(
                    kItemBurger,
                    fontSize:18,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: kVerticalMargin/2),
                  ResponsiveText(
                    kBurgerDescription,
                    fontWeight: FontWeight.w400,
                    textColor: Color(kBaseLight),
                  )
                ],
              ),
            ),
            Container(
              height: kVerticalMargin/2,
              color: Color(kNeutral),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ResponsiveText(
                          "Size",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                              decoration: BoxDecoration(color: Color(kNeutral),
                              borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                children: [
                                SizedBox(width: kHorizontalMargin/2,),
                                ResponsiveText(
                                  kRequired,
                                  fontWeight: FontWeight.w500,
                                  textColor: Color(kTextIcon),

                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                    ResponsiveText("Choose 1",
                    fontSize: 14,
                    textColor: Color(kBaseLight),
                    fontWeight: FontWeight.w400,
                    ),
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ResponsiveText(
                          "Small",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        ResponsiveText("Rs.200",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        ),
                      ],
                    )
                  ],
                ),
              ), 
              Divider(height: 2,  color: Color(kBaseLight)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveText(
                          "Medium",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        ResponsiveText("Rs.300",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        ),
                      ],
                    )
                  ],
                ),
              ), 
              Divider(height: 2,  color: Color(kBaseLight)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveText(
                          "Large",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        ResponsiveText("Rs.400",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
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