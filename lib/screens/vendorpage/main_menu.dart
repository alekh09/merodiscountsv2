import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        padding:  EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
        decoration:  BoxDecoration(
          color: Color(kPrimaryWhite),
        ),
        child: Column(
          children: [
            Row(
              children: [
               
                ResponsiveText(
                  KVendorName,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textColor: Color(kTextIcon),
                ),
              ],
            ),
            SizedBox(height: kHorizontalMargin,),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SvgPicture.asset(
                  Assets.svgImages.redbutton
                ), 
                      ResponsiveText(
                        kItemName,
                        fontSize:16,
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        ),
                        ResponsiveText(kItemDescription,
                        fontSize:12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.svgImages.ratingreen),
                              SizedBox(width: kHorizontalMargin/2),
                              ResponsiveText(kRating,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              ),
                          ],
                        ),
                        Row(
                          children: [
                            ResponsiveText(kPrice,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            textColor: Color(kTextIcon),
                            ),
                            SizedBox(width: kHorizontalMargin/2,),
                            Expanded(
                              child: ResponsiveText(kPrice,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              textColor: Color(kBaseLight),
                              
                              decoration: TextDecoration.lineThrough,),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/2, vertical: kVerticalMargin/3),
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Color(0xffEAEBF0))),
                              child: Row(
                                children: [
                                SvgPicture.asset(
                                  Assets.svgImages.plus_icon
                                 ),
                                SizedBox(width: kHorizontalMargin/2,),
                                ResponsiveText(kAdd,
                                  fontWeight: FontWeight.w500,
                                 textColor: Color(0xff252525),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: kHorizontalMargin/2,),
                Container(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: 
                        'https://merodiscounts.com/storage/media/service/We2OKq1JcdvjjQVqfc0Owl9vH4It1HnNCH0QOb4S.jpg', 
                      fit: BoxFit.cover
                    ), 
                  borderRadius: BorderRadius.circular(8),
                      ),            
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
        itemCount: 10,
    );
  }
}