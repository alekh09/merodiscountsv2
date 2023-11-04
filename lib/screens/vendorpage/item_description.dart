import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class Itemdescription extends StatelessWidget {
  const Itemdescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kPrimaryWhite),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
              children: [
                Container(
                  height: height * 0.26,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://merodiscounts.com/storage/media/user/OAyO7OFc08vqwHJS4PT5OMHRVVOhMYOZcmz0ZZKJ.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10, // Adjust the top position of the icon as needed
                  left: 10, // Adjust the left position of the icon as needed
                  child:Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ResponsiveText(
                    kItemBurger,
                    fontSize:18,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: kVerticalMargin/2),
                  ResponsiveText(
                    kBurgerDescription,
                    fontWeight: FontWeight.w400,
                    textColor: Color(kBaseLight),
                  )
                ],
              ),
            ),
            Container(
              height: kVerticalMargin,
              color: Color(kNeutral),
            ),


            ],
          ),
        ), 
      ),
    );
  }
}