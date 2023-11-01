import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';

import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class VendorInfoOnly extends StatelessWidget {
  const VendorInfoOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNeutralColor,
      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: 'https://merodiscounts.com/storage/media/user/jIuemVzhSqK2XHejb7ipE8YeJ8SC4JebYbXB5UTq.png',
              fit: BoxFit.cover,
              height:160 ,
              width: 342,
            ),
          ),
          SizedBox(height: kVerticalMargin/4),
          const ResponsiveText(
            'Laliz Pizza',
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
          SizedBox(height:6),
          const ResponsiveText(
            "Chabahil, Kathmandu",
          ),
          SizedBox(height: kVerticalMargin/4),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
