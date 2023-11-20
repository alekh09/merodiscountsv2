import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class SortByBottomSheet extends StatefulWidget {
  const SortByBottomSheet({super.key});

  @override
  State<SortByBottomSheet> createState() => _SortByBottomSheetState();
}

class _SortByBottomSheetState extends State<SortByBottomSheet> {
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
          const ResponsiveText(kSortBy,fontWeight: FontWeight.w600,fontSize: 16),
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
          SizedBox(
            height: kVerticalMargin,
          ),
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
