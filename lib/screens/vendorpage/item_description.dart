import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class Itemdescription extends StatelessWidget {
  const Itemdescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kNeutral),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Stack(
              children: [
                Container(
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://merodiscounts.com/storage/media/vendor/vendor_banner_image/makai_restaurant_1695278466.jpg',
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
            ],
          ),
        ), 
      ),
    );
  }
}