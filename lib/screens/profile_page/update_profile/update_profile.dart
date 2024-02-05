import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

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
                      Assets.svgImages.back_icon
                    ),
                    SizedBox(width: kHorizontalMargin,),
                    ResponsiveText(
                      "Update Profile",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                    SizedBox(),
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
                            "Full Name",
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
                          ResponsiveText('Bhuwan Shrestha',
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
                            "Email",
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
                          ResponsiveText('gmail@bhuwan.com',
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
                            "Mobile Number",
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
                          ResponsiveText('9800000000',
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
                            "Date of Birth",
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
                          ResponsiveText('1899/12/13',
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