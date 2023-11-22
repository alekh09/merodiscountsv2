import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';
import '../cart/delivery_info_tile.dart';



class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Container(
          padding: EdgeInsets.all(kHorizontalMargin*1.3),
          child: SvgPicture.asset(
            Assets.svgImages.arrowLeftLong,
            height: height * 0.025,
            width: height * 0.025,
          ),
        ),
        title: const ResponsiveText('Order ID: 474', fontWeight: FontWeight.w700, fontSize: 16),
        backgroundColor: kDefaultIconLightColor,
        titleSpacing:-10,
        actions: [
          Padding(
            padding: EdgeInsets.all(kHorizontalMargin),
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.svgImages.arrowsRotate,
                  height: height * 0.02,
                  width: height * 0.02,
                  color: kPrimaryColor,
                ),
                SizedBox(width: kHorizontalMargin/2),
                ResponsiveText('Reorder',fontWeight: FontWeight.w600, fontSize: 16,textColor: kPrimaryColor,),
              ],
            ),
          )

        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:kHorizontalMargin*1.3,vertical: kVerticalMargin),
                color: kDefaultIconLightColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Container(
                          height: height * 0.05,
                          width:  height * 0.05,
                          child: Row(
                            children: [
                              ClipRRect(
                                child: CachedNetworkImage(
                                    imageUrl:
                                    'https://merodiscounts.com/storage/media/user/cfjD19gp76mgPaW5gASnCVI2lAfH1SNqJWd66XYH.png',
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: kHorizontalMargin/2),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ResponsiveText(kVendorsName,fontWeight: FontWeight.w600,fontSize: 16,),
                            ResponsiveText(kVendorLocation)
                          ],
                        ))
                      ],
                    ),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Your order is confirmed.',fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    Row(
                      children: [
                        ResponsiveText('Arrives between',fontSize: 12,fontWeight: FontWeight.w400,textColor: kItemDescriptionColor,),
                        SizedBox(width: kHorizontalMargin/2),
                        ResponsiveText('4:19 PM - 5:00 PM',fontSize: 12,fontWeight: FontWeight.w600,),


                      ],
                    ),
                    SizedBox(height: kVerticalMargin),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            child: SvgPicture.asset(
                                Assets.svgImages.orderConfirm,
                                height: height * 0.025,
                                width: height * 0.025
                            ),
                            backgroundColor: kDefaultIconDarkColor,
                            radius: 20
                        ),
                        Container(
                          height: kVerticalMargin*0.2,
                          width: kHorizontalMargin*6,
                          color: Colors.black26,
                        ),
                        CircleAvatar(
                            child: SvgPicture.asset(
                                Assets.svgImages.foodCooking,
                                height: height * 0.025,
                                width: height * 0.025
                            ),
                            backgroundColor: Colors.black26,
                            radius: 20
                        ),
                        Container(
                          height: kVerticalMargin*0.2,
                          width: kHorizontalMargin*6,
                          color: Colors.black26,
                        ),
                        CircleAvatar(
                            child: SvgPicture.asset(
                                Assets.svgImages.deliveryBold,
                                height: height * 0.025,
                                width: height * 0.025
                            ),
                            backgroundColor: Colors.black26,
                            radius: 20
                        ),
                        Container(
                          height: kVerticalMargin*0.2,
                          width: kHorizontalMargin*6,
                          color: Colors.black26,
                        ),
                        CircleAvatar(
                            child: SvgPicture.asset(
                                Assets.svgImages.delivered,
                                height: height * 0.025,
                                width: height * 0.025,
                            ),
                            backgroundColor: Colors.black26,
                            radius: 20
                        ),





                      ],
                    ),
                    SizedBox(height: kVerticalMargin/2),
                    ResponsiveText('Your order is confirmed from you.',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin*1.5),
                    ResponsiveText('Deliver to: Salman Khan',fontWeight: FontWeight.w800,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/8),
                    ResponsiveText('9800000000,  demo@gmail.com'),
                    SizedBox(height: kVerticalMargin/8),
                    ResponsiveText(kFullLocation,textColor: kItemDescriptionColor,)

                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin/2),
              Container(
                color: kDefaultIconLightColor,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*1.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Order Items',fontWeight: FontWeight.w700, fontSize: 16),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Family Combo x 1',fontWeight: FontWeight.w600,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Chicken Biryani, Mushroom pizza medium, spicy chicken wings, French fries, coke 1000ml',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    Divider(height: 1,thickness: 1,),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Two Bestie or Love Birds combo x 1',fontWeight: FontWeight.w600,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Spicy Chicken wings Chicken Momo Steam Vegetable cheese Burger French Fries Coke 500ml',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),

                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin/2),
              Container(
                color: kDefaultIconLightColor,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*1.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kVerticalMargin),
                    const ResponsiveText(kPayment,
                        fontSize: 16, fontWeight: FontWeight.w700),
                    SizedBox(height: kVerticalMargin),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText(kSubTotal, fontWeight: FontWeight.w500),
                        ResponsiveText('Rs. 4300', fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: kVerticalMargin / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const ResponsiveText(kDeliveryFee, fontWeight: FontWeight.w500),
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
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(32),
                                          topRight: Radius.circular(32),
                                        )
                                    ),
                                    //isScrollControlled: true,
                                    builder: (context) =>
                                    const Wrap(
                                        children:[DeliveryInfo()]

                                    )
                                );

                              },
                            ),
                          ],
                        ),
                        const ResponsiveText('Rs. 0', fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: kVerticalMargin / 2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText(kPromo, fontWeight: FontWeight.w500),
                        Expanded(child: ResponsiveText('(MYFIRSTORDER)', fontWeight: FontWeight.w500)),
                        ResponsiveText('- Rs. 500', fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: kVerticalMargin / 2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText(kTotal, fontWeight: FontWeight.w700),
                        ResponsiveText('Rs. 3800', fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: kVerticalMargin / 4)
                  ],
                ),
              ),

            ],


          ),
        ),
      ),
    );
  }
}
