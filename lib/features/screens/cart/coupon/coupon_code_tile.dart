import 'package:flutter/cupertino.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/utils/util.dart';
import '../../../widgets/responsive_text.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height*0.18,
      width: width*0.65,
      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: kSearchBorderColor)
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveText('Get 40% Instant Discount',fontWeight: FontWeight.w600,fontSize: 16,),
          SizedBox(height: kVerticalMargin/4,),
          ResponsiveText('Get 40% instant discount on your first order purchased above Rs. 500.'),
          SizedBox(height: kVerticalMargin/4,),
          Container(
            decoration: BoxDecoration(
                color: kShadowColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: kSearchBorderColor)
            ),
            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2,vertical: kVerticalMargin/2),
            child: ResponsiveText('MEROFIRSTORDER',fontSize: 16,fontWeight: FontWeight.w600,textColor: kPrimaryColor,),
          ),
          SizedBox(height: kVerticalMargin/2,),
          ResponsiveText('Apply Code',fontWeight: FontWeight.w600,fontSize: 14,),


        ],
      ) ,
    );
  }
}
