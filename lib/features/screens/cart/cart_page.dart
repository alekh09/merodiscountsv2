import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/features/screens/cart/coupon/coupon_page.dart';
import 'package:mero_discountsv2/features/screens/cart/delivery_info_tile.dart';
import 'package:mero_discountsv2/features/screens/cart/items_with_vendorname_tile.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child:
            Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
          Container(
            padding: EdgeInsets.all(kHorizontalMargin * 2),
            color: kDefaultIconLightColor,
            child: Row(
              children: [
                Container(
                  child: SvgPicture.asset(
                    Assets.svgImages.arrowLeftLong,
                    height: height * 0.025,
                    width: height * 0.025,
                  ),
                ),
                SizedBox(width: kHorizontalMargin*6),
                Center(
                  child: Container(
                    //width: width*0.5,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ResponsiveText('Delivery',fontSize: 16,fontWeight: FontWeight.w500,)
                            ],
                          ),
                        ),
                        Container(
                          padding:EdgeInsets.symmetric(horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                          decoration: ShapeDecoration(
                            color: Color(0xFF252525),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ResponsiveText('Takeway',fontSize: 16,fontWeight: FontWeight.w500,textColor: kDefaultIconLightColor,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(height: kVerticalMargin / 8),
                      ItemWithVendor(),
                      SizedBox(height: kVerticalMargin / 4),
                      //ItemWithVendor()
                    ],
                  );
                }),
          ),
          SizedBox(height: kHorizontalMargin / 2),
          Container(
            decoration: BoxDecoration(
              color: kDefaultIconLightColor,
              // border:Border(
              //   top: BorderSide(
              //     //color: kPrimaryColor
              //   )
              // )
            ),
            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kVerticalMargin),
                ResponsiveText('Cart Summary',
                    fontSize: 16, fontWeight: FontWeight.w700),
                SizedBox(height: kVerticalMargin),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          Assets.svgImages.coupon,
                          height: height * 0.025,
                          width: height * 0.025,
                        ),
                        SizedBox(width: kHorizontalMargin),
                        ResponsiveText(
                          'Add a Promo Code',
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(width: kHorizontalMargin * 16),
                        SvgPicture.asset(
                          Assets.svgImages.arrowRight,
                          height: height * 0.015,
                          width: height * 0.015,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: kDefaultIconLightColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            )
                        ),
                        //isScrollControlled: true,
                        builder: (context) =>
                            DraggableScrollableSheet(
                                initialChildSize: 1,
                                minChildSize: .5,
                                builder: (BuildContext context, ScrollController scrollController) {
                                  return SingleChildScrollView(
                                      child: CouponPage()

                                  );
                                }
                            )
                    );

                  },
                ),
                SizedBox(height: kVerticalMargin),
                const Divider(
                  thickness: 2,
                  height: 2,
                ),
                SizedBox(height: kVerticalMargin),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveText('Subtotal', fontWeight: FontWeight.w500),
                    ResponsiveText('Rs. 4300', fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: kVerticalMargin / 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ResponsiveText('Delivery', fontWeight: FontWeight.w500),
                        SizedBox(width: kHorizontalMargin / 2),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          child: SvgPicture.asset(
                            Assets.svgImages.info,
                            height: height * 0.013,
                            width: height * 0.013,
                            alignment: Alignment.topRight,
                          ),
                          onTap: ()
                          {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: kDefaultIconLightColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      topRight: Radius.circular(32),
                                    )
                                ),
                                //isScrollControlled: true,
                                builder: (context) =>
                                    DraggableScrollableSheet(
                                        initialChildSize: 0.5, // Initial height as a percentage of the screen height
                                        maxChildSize: 0.8, // Maximum height as a percentage of the screen height
                                        minChildSize: 0.2, // Minimum height as a percentage of the screen height
                                        expand: false,
                                        builder: (BuildContext context, ScrollController scrollController) {
                                          return SingleChildScrollView(
                                              child: DeliveryInfo()

                                          );
                                        }
                                    )
                            );

                          },
                        ),
                      ],
                    ),
                    ResponsiveText('Rs. 80', fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: kVerticalMargin / 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveText('PromoCode', fontWeight: FontWeight.w500),
                    ResponsiveText('- Rs. 500', fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: kVerticalMargin / 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveText('Total', fontWeight: FontWeight.w500),
                    ResponsiveText('Rs. 4380', fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: kVerticalMargin / 2)
              ],
            ),
          ),
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
              child: ResponsiveText(
                'Continue',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                textColor: kDefaultIconLightColor,
                textAlign: TextAlign.center,
              ))
        ]),
      ),
    );
  }
}
