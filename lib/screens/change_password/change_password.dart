import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                      "Change Password",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                    
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
                      // height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ResponsiveText(
                            "Old Password",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            ),
                            Container(
                      padding: EdgeInsets.all(kHorizontalMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffEAEBF0)),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Row(
                        children: [
                          ResponsiveText('Old Password',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ResponsiveText(
                            "New Password",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            ),
                            Container(
                      padding: EdgeInsets.all(kHorizontalMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffEAEBF0)),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Row(
                        children: [
                          ResponsiveText('New Password',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                )
              ), 
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin/2),
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ResponsiveText(
                            "Confirm Password",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            ),
                            Container(
                      padding: EdgeInsets.all(kHorizontalMargin),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xffEAEBF0)),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Row(
                        children: [
                          ResponsiveText('Confirm Password',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textColor: Color(kBaseLight),
                          ),
                        ],
                      ),
                    ),      
                    
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ResponsiveText("Forget Password?"),
                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                height: height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  // color: Colors.amber,
                ),
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color(0xffFFF0EB), // Text color
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: 
                  ResponsiveText("Update",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  textColor: Color(kBaseLight),
                  )),
              )      
              
            ]
          ),
        ),
      ),
    );
  }
}