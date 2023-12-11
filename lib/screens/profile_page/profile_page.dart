import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      height: height *0.1,
                      width: height *0.1,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(width: kHorizontalMargin,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveText(
                          "Venu Gopala",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        ResponsiveText(
                          "98633258715",
                          fontWeight: FontWeight.w400,
                        ),
                        ResponsiveText(
                          "venugopala@gmail.com",
                          fontWeight: FontWeight.w400,
                        ),
                        Row(
                          children: [
                            ResponsiveText(
                              "Edit",
                              fontSize: 14,
                              textColor: Color(kPrimary),
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(width: kHorizontalMargin/2),
                            SvgPicture.asset(
                              Assets.svgImages.edit
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.add_user,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Address Book",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Manage Your Saved Addresses.", 
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
              SizedBox(height: 1,),
              // Divider(thickness: 1,),
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
                            "Your Rating",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "View and edit your product rating.", 
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
              SizedBox(height: 1,),
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.policies,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Your Orders",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "View your recent orders.", 
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