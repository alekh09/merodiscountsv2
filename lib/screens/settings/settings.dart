import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                      "Settings",
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
                      Assets.svgImages.bell,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Notifications",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Please read this seriously.", 
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
              // Divider(thickness: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.lock,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Password and Security",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Manage your passwords, login preferences.", 
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
                      Assets.svgImages.moon,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Dark Mode",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Change appearance of the app.", 
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
                      Assets.svgImages.updates,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Check fo Update",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Check if there is latest update available.",
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
                      Assets.svgImages.logout,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: kHorizontalMargin),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText(
                            "Logout",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            // textColor: Colors.,
                          ),
                          ResponsiveText(
                            "Logout from the app.", 
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