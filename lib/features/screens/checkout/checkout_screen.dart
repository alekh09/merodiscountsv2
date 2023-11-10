
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/screens/checkout/change_delivery_details_screen.dart';
import 'package:mero_discountsv2/features/screens/checkout/payment_options_screen.dart';
import 'package:mero_discountsv2/features/screens/checkout/schedule_delivery_screen.dart';
import 'package:mero_discountsv2/features/screens/checkout/widgets/RowCustomerInfo.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../cart/cart_page.dart';
import '../cart/delivery_info_tile.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.6834989179836, 85.30877155197052),
    zoom: 14.4746,
  );

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
          title: const ResponsiveText(kCheckout,
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
                      height: height*0.2,
                      padding: EdgeInsets.all(kHorizontalMargin*2),
                      color:kDefaultIconLightColor,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        markers:{
                          const Marker(
                            markerId: MarkerId('OCG Software'),
                            position: LatLng(27.6834989179836, 85.30877155197052),
                          )
                        }
                      ),

                    ),

                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: kVerticalMargin/4),

                          SizedBox(height: kVerticalMargin),
                          RowCustomerInfo(imageAsset: Assets.svgImages.locationDot,text: kLocation,),
                          SizedBox(height: kVerticalMargin),
                          const Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          RowCustomerInfo(imageAsset: Assets.svgImages.user,text: kCustomerName,),
                          SizedBox(height: kVerticalMargin),
                          const Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          RowCustomerInfo(imageAsset: Assets.svgImages.phone,text: kCustomerContact,),
                          SizedBox(height: kVerticalMargin),
                          const Divider(height: 2,thickness: 1,),
                          SizedBox(height: kVerticalMargin),
                          GestureDetector(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    Assets.svgImages.arrowsRotate
                                ),
                                SizedBox(width: kHorizontalMargin),
                                const Expanded(child: ResponsiveText(kChangeDeliveryDetails,fontWeight: FontWeight.w600,)),
                                SvgPicture.asset(
                                    Assets.svgImages.arrowRight
                                ),
                              ],
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: kDefaultIconLightColor,
                                  shape: const RoundedRectangleBorder(
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
                                            return const SingleChildScrollView(
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
                    const Divider(height: 1,thickness: 1),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ResponsiveText(kPayment,fontWeight: FontWeight.w700,fontSize: 16,),
                            Row(children: [
                              const ResponsiveText(kChoosePayment,fontWeight: FontWeight.w700,fontSize: 16,),
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
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32),
                                    topRight: Radius.circular(32),
                                  )
                              ),
                              isScrollControlled: false,
                              builder: (context) =>
                                  const Wrap(children:[PaymentOptionsScreen()])
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
                                const ResponsiveText(kScheduleDelivery,fontWeight: FontWeight.w700,fontSize: 16,),
                                SizedBox(height: kVerticalMargin/4),
                                const ResponsiveText('Today: Fri, 26 May,2023',fontWeight: FontWeight.w500,fontSize: 16,),
                                SizedBox(height: kVerticalMargin/8),
                                const ResponsiveText('As soon as possible',fontWeight: FontWeight.w400,fontSize: 12,textColor: kItemDescriptionColor,),

                              ],
                            ),
                            ResponsiveText(kChange,textColor: kPrimaryColor,)
                          ],
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
                                isScrollControlled: false,
                                builder: (context) =>
                                    const Wrap(children:[ScheduleDeliveryScreen()])
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
                          ResponsiveText(kSpecialInstruction,fontWeight: FontWeight.w700,fontSize: 16),
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
                  child: const ResponsiveText(
                    kPlaceOrder,
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





