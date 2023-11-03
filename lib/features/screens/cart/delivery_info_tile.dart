import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

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
          ResponsiveText('Delivery Fee',fontWeight: FontWeight.w600,fontSize: 16),
          SizedBox(
            height: kVerticalMargin,
          ),
          ResponsiveText(kDeliveryTerm1,textColor: kItemDescriptionColor),
          SizedBox(
            height: kVerticalMargin/2,
          ),
          ResponsiveText(kDeliveryTerm2,textColor: kItemDescriptionColor),
          SizedBox(
            height: kVerticalMargin*2
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(kPrimaryColor),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(width,
                      height * 0.06), // Set your desired width and height
                ),
              ),
              child: ResponsiveText(
                'OK',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textColor: kDefaultIconLightColor,
                textAlign: TextAlign.center,
              ))

        ],
      ),
    );
  }
}
