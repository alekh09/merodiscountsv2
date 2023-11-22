import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

import '../../../core/utils/asset_provider.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDefaultIconLightColor,
        title: ResponsiveText('My Orders',fontWeight: FontWeight.w700, fontSize: 16),
        centerTitle: true,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: kDefaultIconLightColor,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText('Order No: 474',fontSize: 16,fontWeight: FontWeight.w600,),
                        Row(
                          children: [
                            ResponsiveText('Rs. 240',),
                            SizedBox(width: kHorizontalMargin/4),
                            SvgPicture.asset(
                                Assets.svgImages.arrowRight
                            ),

                          ],
                        )
                      ],
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('02 Sep, 2023 4:11 PM',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    Divider(height: 1,thickness: 1),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText(kVendorsName,fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText(kVendorLocation,textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Order Items:',fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Chicken Pizza (1), Chicken Chilly Boneless (1)',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Order Status:',fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Processing',textColor: kPrimaryColor,),
                    SizedBox(height: kVerticalMargin),


                  ],
                ),
              ),
              SizedBox(height: kVerticalMargin/2),
              Container(
                color: kDefaultIconLightColor,
                padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveText('Order No: 474',fontSize: 16,fontWeight: FontWeight.w600,),
                        Row(
                          children: [
                            ResponsiveText('Rs. 240',),
                            SizedBox(width: kHorizontalMargin/4),
                            SvgPicture.asset(
                                Assets.svgImages.arrowRight
                            ),

                          ],
                        )
                      ],
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('02 Sep, 2023 4:11 PM',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    Divider(height: 1,thickness: 1),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText(kVendorsName,fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText(kVendorLocation,textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Order Items:',fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Chicken Pizza (1), Chicken Chilly Boneless (1)',textColor: kItemDescriptionColor,),
                    SizedBox(height: kVerticalMargin),
                    ResponsiveText('Order Status:',fontWeight: FontWeight.w600,fontSize: 16,),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Delivered',textColor: kPrimaryColor,),
                    SizedBox(height: kVerticalMargin),
                    Divider(height: 1,thickness: 1),
                    SizedBox(height: kVerticalMargin),

                    Row(
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


                  ],
                ),
              ),

            ],

          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgImages.deliveryOutline,color: _selectedIndex==0?kPrimaryColor:Colors.grey,),
            activeIcon: SvgPicture.asset(Assets.svgImages.deliveryBold2,color: _selectedIndex==0?kPrimaryColor:Colors.grey,),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgImages.dineOutline,color: _selectedIndex==1?kPrimaryColor:Colors.grey,),
            activeIcon: SvgPicture.asset(Assets.svgImages.dineBold,color: _selectedIndex==1?kPrimaryColor:Colors.grey,),
            label: 'Dine-In',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgImages.parcelOutline,color: _selectedIndex==2?kPrimaryColor:Colors.grey,),
            activeIcon: SvgPicture.asset(Assets.svgImages.parcelBold,color: _selectedIndex==2?kPrimaryColor:Colors.grey,),
            label: 'Parcel',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgImages.orderThin,color: _selectedIndex==3?kPrimaryColor:Colors.grey,),
            activeIcon: SvgPicture.asset(Assets.svgImages.orderBold,color: _selectedIndex==3?kPrimaryColor:Colors.grey,),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgImages.moreRegular,color: _selectedIndex==4?kPrimaryColor:Colors.grey,),
            activeIcon: SvgPicture.asset(Assets.svgImages.moreSolid,color: _selectedIndex==4?kPrimaryColor:Colors.grey,),
            label: 'Dine-In',
          ),
          
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
