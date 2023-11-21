import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

import '../../core/utils/asset_provider.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.7089157, 85.3195248),
    zoom: 16.4746,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                zoomControlsEnabled: false,
              compassEnabled: false,


            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kDefaultIconLightColor,

                  ),
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin/1.5,vertical: kVerticalMargin/2),
                  child: SvgPicture.asset(
                    Assets.svgImages.close,
                    height: height * 0.02,
                    width: height * 0.02,
                  )
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Positioned(
              bottom: kVerticalMargin*2,left: kHorizontalMargin*3,
                child: Container(
                  decoration: BoxDecoration(
                    color: kDefaultIconLightColor,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveText('Your order is confirmed.',fontSize: 16,fontWeight: FontWeight.w600,),
                      SizedBox(height: kVerticalMargin/4),
                      Row(
                        children: [
                          ResponsiveText('Arrives between',fontSize: 12,fontWeight: FontWeight.w400,textColor: kItemDescriptionColor,),
                          SizedBox(width: kHorizontalMargin/2),
                          ResponsiveText('4:19 PM - 5:00 PM',fontSize: 12,fontWeight: FontWeight.w600,),


                        ],
                      ),
                      SizedBox(height: kVerticalMargin,),
                      Row(
                        children: [
                          CircleAvatar(
                            child: SvgPicture.asset(
                              Assets.svgImages.orderConfirm,
                              height: height * 0.025,
                              width: height * 0.025
                            ),
                            backgroundColor: kDefaultIconDarkColor,
                            radius: 25
                          ),
                          SizedBox(width: kHorizontalMargin*3),
                          CircleAvatar(
                              child: SvgPicture.asset(
                                  Assets.svgImages.foodCooking,
                                  height: height * 0.025,
                                  width: height * 0.025,
                                color: kDefaultIconLightColor,
                              ),
                              backgroundColor: kDefaultIconDarkColor,
                              radius: 25
                          ),
                          SizedBox(width: kHorizontalMargin*3),
                          CircleAvatar(
                              child: SvgPicture.asset(
                                  Assets.svgImages.deliveryBold,
                                  height: height * 0.025,
                                  width: height * 0.025,
                                color: kDefaultIconLightColor,

                              ),
                              backgroundColor: Colors.black,
                              radius: 25
                          ),
                          SizedBox(width: kHorizontalMargin*3),
                          CircleAvatar(
                              child: SvgPicture.asset(
                                  Assets.svgImages.delivered,
                                  height: height * 0.025,
                                  width: height * 0.025,
                                color: kDefaultIconLightColor,

                              ),
                              backgroundColor: Colors.black,
                              radius: 25
                          ),

                        ],
                      ),
                      SizedBox(height: kVerticalMargin/2),
                      ResponsiveText('Your order is confirmed from you.',textColor: kItemDescriptionColor,),



                    ],
                  ),
                ))


          ],
        ),
      ),
    );
  }
}
