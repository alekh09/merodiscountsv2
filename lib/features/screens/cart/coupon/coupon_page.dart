import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/screens/cart/coupon/coupon_code_tile.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/utils/asset_provider.dart';
import '../../../widgets/responsive_text.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height*0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin/8
                  ),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    child: SvgPicture.asset(
                      Assets.svgImages.close,
                      height: height * 0.02,
                      width: height * 0.02,
                      alignment: Alignment.topRight,
                    ),
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: kVerticalMargin*2),
                ResponsiveText('Add a Promo Code',fontWeight: FontWeight.w600,fontSize: 18),
                SizedBox(height: kVerticalMargin),
                Container(
                  //padding: EdgeInsets.all(kHorizontalMargin/4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kSearchBorderColor),
                    color: kDefaultIconLightColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: ResponsiveText(
                            'Enter promo code',
                            textColor:kItemDescriptionColor,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(kPrimaryColor),
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(width*0.2,
                                    height * 0.05), // Set your desired width and height
                              ),
                            ),
                            onPressed: (){},
                            child: ResponsiveText('Apply')),
                      )
                    ],
                  ),
                ),
                SizedBox(height: kHorizontalMargin),
              ],
            ),
          ),
          SizedBox(child: Container(
            height: kHorizontalMargin/8,
            color: kNeutralColor,
          ),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText('Available Promo Codes',fontSize: 18,fontWeight: FontWeight.w600,),
                SizedBox(height: kVerticalMargin),
                Container(
                  height: height * 0.18,
                  child: ListView.builder(scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CouponCode(),
                        SizedBox(width: kHorizontalMargin)
                      ],
                    );
                  }, itemCount: 3,),
                )


              ],
            ),
          ),
          SizedBox(child: Container(
            height: kHorizontalMargin/8,
            color: kNeutralColor,
          ),),

        ],
      )
    );
  }
}
