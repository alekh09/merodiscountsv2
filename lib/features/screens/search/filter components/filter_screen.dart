import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

import '../../../../core/utils/asset_provider.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  double _startValue = 25.0;
  double _endValue = 75.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
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
              ResponsiveText('Filter',
                  fontWeight: FontWeight.w600, fontSize: 18),
            ],
          ),
        ),
        Divider(height: 1,thickness: 1,),
        SizedBox(height: kVerticalMargin),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText(kSortBy,fontWeight: FontWeight.w700,),
                SizedBox(height: kVerticalMargin/8),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: kDefaultIconLightColor,
                      shape: CircleBorder(),
                      activeColor: kPrimaryColor,
                      focusColor: kPrimaryColor,
                      hoverColor: kPrimaryColor,
                      splashRadius: 20,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    ResponsiveText('Picked For You',fontWeight: FontWeight.w500,),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: kDefaultIconLightColor,
                      shape: CircleBorder(),
                      activeColor: kPrimaryColor,
                      focusColor: kPrimaryColor,
                      hoverColor: kPrimaryColor,
                      splashRadius: 20,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    ResponsiveText('Most Popular',fontWeight: FontWeight.w500,),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: kDefaultIconLightColor,
                      shape: CircleBorder(),
                      activeColor: kPrimaryColor,
                      focusColor: kPrimaryColor,
                      hoverColor: kPrimaryColor,
                      splashRadius: 20,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    ResponsiveText('Veg Items',fontWeight: FontWeight.w500,),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: kDefaultIconLightColor,
                      shape: CircleBorder(),
                      activeColor: kPrimaryColor,
                      focusColor: kPrimaryColor,
                      hoverColor: kPrimaryColor,
                      splashRadius: 20,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    ResponsiveText('Cost: low to high',fontWeight: FontWeight.w500,),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      checkColor: kDefaultIconLightColor,
                      shape: CircleBorder(),
                      activeColor: kPrimaryColor,
                      focusColor: kPrimaryColor,
                      hoverColor: kPrimaryColor,
                      splashRadius: 20,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    ResponsiveText('Cost: high to low',fontWeight: FontWeight.w500,),
                  ],
                ),
                SizedBox(height: kVerticalMargin),
                ResponsiveText('Offers',fontWeight: FontWeight.w700,fontSize: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveText('With Offer',fontWeight: FontWeight.w600,),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          value:true, onChanged: (value){
                            setState(() {
                              value=false;
                            });
                      },activeColor: kPrimaryColor,),
                    )
                  ],
                ),
                SizedBox(height: kVerticalMargin),
                ResponsiveText('Ratings',fontWeight: FontWeight.w700,fontSize: 16,),
                Column(
                  children: [
                    RangeSlider(
                      min: 0.0,
                      max: 100.0,
                      activeColor: kPrimaryColor,
                      inactiveColor: kShadowColor,
                      values: RangeValues(_startValue, _endValue),
                      onChanged: (values) {
                        setState(() {
                          _startValue = snapToNearestRating(values.start);
                          _endValue = snapToNearestRating(values.end);
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin * 1.7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (String rating in ['3', '3.5', '4', '4.5', '5'])
                            ResponsiveText(rating, fontWeight: FontWeight.w600,)
                        ],
                      ),
                    ),
                  ],
            ),

                SizedBox(height: kVerticalMargin),
                const ResponsiveText(kPriceRange,fontWeight: FontWeight.w700,fontSize: 16,),
                SizedBox(height: kVerticalMargin),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kSearchBorderColor),
                      ),
                      child: ResponsiveText("Rs. 10",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: kHorizontalMargin/2),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kSearchBorderColor),
                      ),
                      child: ResponsiveText("Rs. 100",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: kHorizontalMargin/2),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin/2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kSearchBorderColor),
                      ),
                      child: ResponsiveText("Rs. 1000",
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: kVerticalMargin*5),


              ],
            ))

      ],
    );
  }
}

double snapToNearestRating(double value) {
  List<String> ratingValues = ['3', '3.5', '4', '4.5', '5'];

  double interval = 100.0 / (ratingValues.length - 1);

  int index = (value / interval).round();

  return index * interval;
}