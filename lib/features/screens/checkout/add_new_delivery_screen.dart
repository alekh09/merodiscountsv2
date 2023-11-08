import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class AddNewDeliveryScreen extends StatelessWidget {
  const AddNewDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding:EdgeInsets.symmetric(horizontal:kHorizontalMargin*2,vertical: kVerticalMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                Assets.svgImages.close,
                height: height * 0.02,
                width: height * 0.02,
                alignment: Alignment.topRight,
              ),
            ),
            SizedBox(height: kVerticalMargin),
            ResponsiveText('Add New Delivery Address',
                fontWeight: FontWeight.w600, fontSize: 18),
            SizedBox(height: kVerticalMargin),
            Container(
              padding: EdgeInsets.all(kHorizontalMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffEAEBF0)),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgImages.search,
                    height: height * 0.02,
                    width: width * 0.02,
                  ),
                  SizedBox(width: kHorizontalMargin),
                  Expanded(
                    child: ResponsiveText('Search street name, area...',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textColor: kItemDescriptionColor,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: kVerticalMargin),
            Container(
              padding: EdgeInsets.all(kHorizontalMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffEAEBF0)),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.svgImages.locationCrossHairs,
                    height: height * 0.02,
                    width: width * 0.02,
                  ),
                  SizedBox(width: kHorizontalMargin),
                  ResponsiveText('Use Your Current Location',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,

                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    ]);
  }
}
