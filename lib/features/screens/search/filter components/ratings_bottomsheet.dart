import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class RatingBottomSheet extends StatefulWidget {
  const RatingBottomSheet({super.key});

  @override
  State<RatingBottomSheet> createState() => _RatingBottomSheetState();
}

class _RatingBottomSheetState extends State<RatingBottomSheet> {
  double _startValue = 25.0;
  double _endValue = 75.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Container(
            decoration: BoxDecoration(
                color: kSearchBorderColor,

                borderRadius: BorderRadius.circular(4)
            ),
            height: 3,
            width: width*0.1,
          ),),
          SizedBox(
            height: kVerticalMargin*2,
          ),
          ResponsiveText(kRatings,fontWeight: FontWeight.w600,fontSize: 16),
          RangeSlider(
            min: 0.0,
            max: 100.0,
            activeColor: kPrimaryColor,
            inactiveColor: kShadowColor,
            values: RangeValues(_startValue, _endValue),
            onChanged: (values) {
              setState(() {
                // Snap the start and end values to the nearest rating
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
                  ResponsiveText('$rating', fontWeight: FontWeight.w600,)
              ],
            ),
          ),
          SizedBox(height: kVerticalMargin,),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(kPrimaryColor),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(width,
                      height * 0.06), // Set your desired width and height
                ),
              ),
              child: const ResponsiveText(
                'Continue',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textColor: kDefaultIconLightColor,
                textAlign: TextAlign.center,
              )),


        ],
      ),
    );
  }
}

double snapToNearestRating(double value) {
  List<String> ratingValues = ['3', '3.5', '4', '4.5', '5'];

  double interval = 100.0 / (ratingValues.length - 1);

  int index = (value / interval).round();

  return index * interval;
}