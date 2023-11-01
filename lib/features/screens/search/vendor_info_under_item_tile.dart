import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';

import '../../../core/constants/string_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class VendorInfo extends StatelessWidget {
  const VendorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ResponsiveText(
            kVendorsName,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
          SizedBox(height:kVerticalMargin/4),
          const ResponsiveText(
            kVendorLocation,
          ),
          SizedBox(height: kVerticalMargin/4),
          Row(
            children: [
              const Expanded(
                child: ResponsiveText(
                  kDeliveryTime,
                  fontSize: 12,
                  textColor: kBlack600,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                      Assets.svgImages.ratingreen
                  ),
                  SizedBox(width: kHorizontalMargin/8),
                  const ResponsiveText("4.5/5")
                ],
              )
            ],
          ),


        ],
      ),

    );
  }
}
