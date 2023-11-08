import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/screens/checkout/change_delivery_details_screen.dart';
import 'package:mero_discountsv2/features/screens/checkout/payment_options_screen.dart';
import 'package:mero_discountsv2/features/screens/checkout/schedule_delivery_screen.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../cart/cart_page.dart';
import '../cart/delivery_info_tile.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation:0,
          leading: Container(
            padding: EdgeInsets.all(kHorizontalMargin * 1.25),
            child: GestureDetector(
              child: SvgPicture.asset(
                Assets.svgImages.arrowLeftLong,
                height: height * 0.025,
                width: height * 0.025,
              ),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
              },
            ),
          ),
          title: ResponsiveText(kCheckout,
              fontWeight: FontWeight.w600, fontSize: 16),
          centerTitle: true,
          backgroundColor: kDefaultIconLightColor,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: kVerticalMargin/8),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: kVerticalMargin/4),
                          Container(
                            height: height*0.2,
                            decoration: BoxDecoration(
                              border: Border.all(color: kSearchBorderColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),

                            child: ClipRRect(

                              child: CachedNetworkImage(
                                  imageUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDWoZeM85IBF5i3h2NlxiYJuy1FnupE2rWpQ',
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: kVerticalMargin),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.svgImages.locationDot
                              ),
                              SizedBox(width: kHorizontalMargin/2),
                              Expanded(child: ResponsiveText(kLocation)),

                            ],
                          ),
                          SizedBox(height: kVerticalMargin),
                          Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  Assets.svgImages.user
                              ),
                              SizedBox(width: kHorizontalMargin/2),
                              Expanded(child: ResponsiveText(kCustomerName)),

                            ],
                          ),
                          SizedBox(height: kVerticalMargin),
                          Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  Assets.svgImages.phone
                              ),
                              SizedBox(width: kHorizontalMargin/2),
                              Expanded(child: ResponsiveText('9863147896')),

                            ],
                          ),
                          SizedBox(height: kVerticalMargin),
                          Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          GestureDetector(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    Assets.svgImages.arrowsRotate
                                ),
                                SizedBox(width: kHorizontalMargin),
                                Expanded(child: ResponsiveText('Change Delivery Details',fontWeight: FontWeight.w600,)),
                                SvgPicture.asset(
                                    Assets.svgImages.arrowRight
                                ),
                              ],
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
                                                child: ChangeDeliveryDetailsScreen()
                                            );
                                          }
                                      )
                              );

                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(vertical: kVerticalMargin/4,horizontal: kHorizontalMargin*2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: kVerticalMargin),
                          ResponsiveText('Payment',
                              fontSize: 16, fontWeight: FontWeight.w700),
                          SizedBox(height: kVerticalMargin),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsiveText('Subtotal', fontWeight: FontWeight.w500),
                              ResponsiveText('Rs. 4300', fontWeight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin / 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ResponsiveText('Delivery Fee', fontWeight: FontWeight.w500),
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
                              ResponsiveText('Rs. 0', fontWeight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin / 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsiveText('Promo', fontWeight: FontWeight.w500),
                              Expanded(child: ResponsiveText('(MYFIRSTORDER)', fontWeight: FontWeight.w500)),
                              ResponsiveText('- Rs. 500', fontWeight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin / 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsiveText('Total', fontWeight: FontWeight.w700),
                              ResponsiveText('Rs. 3800', fontWeight: FontWeight.w500),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin / 4)
                        ],
                      ),
                    ),
                    const Divider(height: 1,thickness: 1),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ResponsiveText('Payment',fontWeight: FontWeight.w700,fontSize: 16,),
                            Row(children: [
                              ResponsiveText('Choose payment',fontWeight: FontWeight.w700,fontSize: 16,),
                              SizedBox(width: kHorizontalMargin/4),
                              SvgPicture.asset(
                                  Assets.svgImages.arrowRight
                              ),
                            ],)
                          ],
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
                              isScrollControlled: false,
                              builder: (context) =>
                                  Wrap(children:[PaymentOptionsScreen()])
                          );

                        },
                      ),
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ResponsiveText('Schedule Delivery',fontWeight: FontWeight.w700,fontSize: 16,),
                                SizedBox(height: kVerticalMargin/4),
                                ResponsiveText('Today: Fri, 26 May,2023',fontWeight: FontWeight.w500,fontSize: 16,),
                                SizedBox(height: kVerticalMargin/8),
                                ResponsiveText('As soon as possible',fontWeight: FontWeight.w400,fontSize: 12,textColor: kItemDescriptionColor,),

                              ],
                            ),
                            ResponsiveText('Change',textColor: kPrimaryColor,)
                          ],
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
                                isScrollControlled: false,
                                builder: (context) =>
                                    Wrap(children:[ScheduleDeliveryScreen()])
                            );

                          }
                      ),
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ResponsiveText('Special Instruction',fontWeight: FontWeight.w700,fontSize: 16),
                          SizedBox(height: kVerticalMargin),
                          Container(
                            height: height*0.1,
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color:kSearchBorderColor ),
                            ),
                            child: ResponsiveText(
                              'Type here if you have any special instruction fo this order',textColor: kItemDescriptionColor,

                            ),
                          ),
                          SizedBox(height: kVerticalMargin),

                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(height: kVerticalMargin/8),
            Container(
              color: kDefaultIconLightColor,
              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
              child: ElevatedButton(
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
                    'Place Order',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    textColor: kDefaultIconLightColor,
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      
    );
  }
}




