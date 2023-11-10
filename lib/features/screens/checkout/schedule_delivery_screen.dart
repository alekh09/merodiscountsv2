import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';


class ScheduleDeliveryScreen extends StatefulWidget {
  const ScheduleDeliveryScreen({super.key});

  @override
  State<ScheduleDeliveryScreen> createState() => _ScheduleDeliveryScreenState();
}

class _ScheduleDeliveryScreenState extends State<ScheduleDeliveryScreen> {

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
          ResponsiveText('Schedule Delivery',fontWeight: FontWeight.w600,fontSize: 16),
          SizedBox(
            height: kVerticalMargin,
          ),
          Wrap(

            children:[ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kShadowColor,
                    border: Border.all(color: kPrimaryColor)
                  ),
                  child: Column(
                    children: [
                      ResponsiveText('Today',fontWeight: FontWeight.w600,fontSize: 16,),
                      ResponsiveText('22 Sep')
                    ],
                  ),
                ),
                SizedBox(width: kHorizontalMargin),
                Container(
                  padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      ResponsiveText('Tomorrow',fontWeight: FontWeight.w600,fontSize: 16,),
                      ResponsiveText('23 Sep')
                    ],
                  ),
                ),
                SizedBox(width: kHorizontalMargin),
                Container(
                  padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      ResponsiveText('Sunday',fontWeight: FontWeight.w600,fontSize: 16,),
                      ResponsiveText('24 Sep')
                    ],
                  ),
                ),
              ],
            ),
            ]
          ),
          SizedBox(
            height: kVerticalMargin,
          ),
          RadioListTile(
            title: ResponsiveText('As soon as Possible',fontWeight: FontWeight.w500,), value: 1,groupValue: 1,
            activeColor: kPrimaryColor,
            onChanged: (value){
              value=0;
              print('As soon as possible is selected');
            },

          ),
          Divider(height:1,thickness: 1,),
          RadioListTile(
            title: ResponsiveText('12:00 PM - 12:30 PM',fontWeight: FontWeight.w500,), value: 1,groupValue: 1,
            activeColor: kPrimaryColor,
            onChanged: (value){
              value=0;
              print('As soon as possible is selected');
            },

          ),
          Divider(height:1,thickness: 1,),
          RadioListTile(
            title: ResponsiveText('12:30 PM - 1:00 PM',fontWeight: FontWeight.w500,), value: 1,groupValue: 1,
            activeColor: kPrimaryColor,
            onChanged: (value){
              value=0;
              print('As soon as possible is selected');
            },

          ),
          Divider(height:1,thickness: 1,),
          RadioListTile(
            title: ResponsiveText('1:00 PM - 1:30 PM',fontWeight: FontWeight.w500,), value: 1,groupValue: 1,
            activeColor: kPrimaryColor,
            onChanged: (value){
              value=0;
              print('As soon as possible is selected');
            },

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

