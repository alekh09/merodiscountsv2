import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class VendorWithItemTile extends StatelessWidget {
  const VendorWithItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.35,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: width * 0.5,
                margin: EdgeInsets.only(left: index == 0? kHorizontalMargin: kHorizontalMargin/2, right: index == 4? kHorizontalMargin: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                decoration: BoxDecoration(
                  // color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Expanded(
                      child: SizedBox(
                        // height: constraints.maxHeight * 0.6,
                        width:  width * 0.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: CachedNetworkImage(
                              imageUrl:
                              'https://merodiscounts.com/storage/media/user/yDl7mzeQztx50aDq1aJO2jSKtWP8hSFDKFH28WHf.jpg',
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: kHorizontalMargin/2,),
                    SvgPicture.asset(
                      Assets.svgImages.green_button,
                      height: height * 0.015,
                      width: width * 0.015,
                    ),
                    const ResponsiveText('Mushroom Pizza',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Assets.svgImages.ratingreen,
                          height: 14,
                          width: 14,
                        ),
                        const SizedBox(width: 3),
                        const ResponsiveText('4.5/5',
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: kVerticalMargin/4),
                    ResponsiveText('Rs. 250',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.black,
                    ),

                  ],
                ),
              );
            }
        ),
        itemCount: 5,
      ),
    );
  }
}
