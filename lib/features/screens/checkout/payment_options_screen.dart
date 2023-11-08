import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

import '../../../core/utils/asset_provider.dart';

class PaymentOptionsScreen extends StatefulWidget {
  const PaymentOptionsScreen({super.key});

  @override
  State<PaymentOptionsScreen> createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  int? selectedValue;
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
          ResponsiveText('Payment Options',fontWeight: FontWeight.w600,fontSize: 16),
          SizedBox(
            height: kVerticalMargin,
          ),
          Container(
            height: height*0.3,
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
              return Column(
                children: [
                  ListTile(
                    title: ResponsiveText('Cash on Delivery',fontWeight: FontWeight.w600,),
                    leading: SvgPicture.asset(
                        Assets.svgImages.moneyBills
                    ),
                    contentPadding: EdgeInsets.all(kHorizontalMargin/8),
                    trailing: Radio(
                      activeColor: kPrimaryColor,
                      value: 0,
                      groupValue: selectedValue,
                      onChanged: (int? value){
                        setState(() {
                          selectedValue=value;
                        });
                      },

                    ),
                  ),
                  Divider(height:1,thickness: 1,),
                ],
              );
            }),
          ),
          SizedBox(
            height: kVerticalMargin,
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
              )),


        ],
      ),
    );
  }
}
