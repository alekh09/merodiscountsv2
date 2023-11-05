import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class ItemWithVendor extends StatefulWidget {
  const ItemWithVendor({super.key});
  @override
  State<ItemWithVendor> createState() => _ItemWithVendorState();
}

class _ItemWithVendorState extends State<ItemWithVendor> {
  int itemCount=1;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kHorizontalMargin * 2, vertical: kVerticalMargin),
      color: kDefaultIconLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResponsiveText('Go Foodie Cafe',
                  fontSize: 16, fontWeight: FontWeight.w700),
              Container(
                padding: EdgeInsets.all(kHorizontalMargin / 1.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kSearchBorderColor),
                  color: kDefaultIconLightColor,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgImages.plus,
                    ),
                    SizedBox(width: kHorizontalMargin / 6),
                    ResponsiveText('Add Items',
                        fontWeight: FontWeight.w500)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: kVerticalMargin),
         Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveText('Family Combo', fontWeight: FontWeight.w500),
                          SizedBox(height: kVerticalMargin / 8),
                          Row(
                            children: [
                              Expanded(
                                  child: ResponsiveText(
                                    'Chicken Biryani,Mushroom Pizza Medium, Spicy chicken wings, French Fries, Coke 1000ml',
                                    fontSize: 12,
                                    textColor: kItemDescriptionColor,
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: kSearchBorderColor),
                                  color: kDefaultIconLightColor,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: ()
                                      {
                                        setState(() {
                                          itemCount--;
                                        });
                                      },
                                      child: Container(
                                        padding:EdgeInsets.all(kHorizontalMargin/2),
                                          child: itemCount==1? Icon(Icons.delete):Icon(Icons.remove)),
                                    ),
                                    SizedBox(width: kHorizontalMargin),
                                    ResponsiveText(itemCount.toString(),
                                        fontSize: 16, fontWeight: FontWeight.w700),
                                    SizedBox(width: kHorizontalMargin),
                                    //RawMaterialButton(onPressed: onPressed)
                                    GestureDetector(child: Container(padding:EdgeInsets.all(kHorizontalMargin/2),child: Icon(Icons.add)),
                                      onTap: ()
                                      {
                                        setState(() {
                                          itemCount=itemCount+1;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              ResponsiveText('Rs 2099',
                                  fontSize: 16, fontWeight: FontWeight.w600),
                              SizedBox(width: kHorizontalMargin / 2),
                              ResponsiveText(
                                'Rs 2099',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                textColor: kItemDescriptionColor,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin),
                          const Divider(
                            thickness: 2,
                            height: 2,
                          ),
                        ],
          )
        ],
      ),
    );

  }

}
