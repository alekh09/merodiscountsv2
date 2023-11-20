import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class PriceRangeBottomSheet extends StatefulWidget {
  const PriceRangeBottomSheet({super.key});

  @override
  State<PriceRangeBottomSheet> createState() => _PriceRangeBottomSheetState();
}

class _PriceRangeBottomSheetState extends State<PriceRangeBottomSheet> {
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
          const ResponsiveText(kPriceRange,fontWeight: FontWeight.w600,fontSize: 16),
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
          SizedBox(height: kVerticalMargin*1.5),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(kPrimaryColor),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(width,
                      height * 0.06),
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
