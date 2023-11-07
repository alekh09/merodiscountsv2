import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';


import '../review/review_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReviewPage()));
              },
            ),
          ),
          title: ResponsiveText(kEditReview,
              fontWeight: FontWeight.w600, fontSize: 16),
          centerTitle: true,
          backgroundColor: kDefaultIconLightColor,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Container()


          ],
        ));
  }
}


