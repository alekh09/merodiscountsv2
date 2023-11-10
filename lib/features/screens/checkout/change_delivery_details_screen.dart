import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/screens/checkout/add_new_delivery_screen.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import '../../widgets/responsive_text.dart';

class ChangeDeliveryDetailsScreen extends StatelessWidget {
  const ChangeDeliveryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding:EdgeInsets.symmetric(horizontal:kHorizontalMargin*2,vertical: kVerticalMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                Assets.svgImages.close,
                height: height * 0.02,
                width: height * 0.02,
                alignment: Alignment.topRight,
              ),
            ),
            SizedBox(height: kVerticalMargin),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ResponsiveText('Address Book',
                    fontWeight: FontWeight.w600, fontSize: 18),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: ResponsiveText('Add a new address',
                      fontWeight: FontWeight.w500, textColor: kPrimaryColor),
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
                                minChildSize:                .5,
                                builder: (BuildContext context, ScrollController scrollController) {
                                  return SingleChildScrollView(
                                      child: AddNewDeliveryScreen()
                                  );
                                }
                            )
                    );

                  },
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: kVerticalMargin/4),
      Padding(
        padding:EdgeInsets.symmetric(horizontal:kHorizontalMargin),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            extentRatio: 0.37,
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: (context) {
                    print("Edited");
                  },
                  backgroundColor: kGreenBorderColor,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit'),
              SlidableAction(
                onPressed: (BuildContext context) {
                  print("Deleted");
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: ListTile(
              title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveText('Sandesh Paudel',
                  fontWeight: FontWeight.w600, fontSize: 16),
              SizedBox(height: kVerticalMargin / 4),
              ResponsiveText(
                '+977 9863476955',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textColor: kItemDescriptionColor,
              ),
              SizedBox(height: kVerticalMargin / 4),
              ResponsiveText(
                kFullLocation,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textColor: kItemDescriptionColor,
              ),
            ],
          )),
        ),
      ),
      SizedBox(height: kVerticalMargin),
      Divider(height: 1, thickness: 1),
      Padding(
        padding:EdgeInsets.symmetric(horizontal:kHorizontalMargin),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            extentRatio: 0.37,
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: (context) {
                    print("Edited");
                  },
                  backgroundColor: kGreenBorderColor,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit'),
              SlidableAction(
                onPressed: (BuildContext context) {
                  print("Deleted");
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveText('Sandesh Paudel',
                      fontWeight: FontWeight.w600, fontSize: 16),
                  SizedBox(height: kVerticalMargin / 4),
                  ResponsiveText(
                    '+977 9863476955',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    textColor: kItemDescriptionColor,
                  ),
                  SizedBox(height: kVerticalMargin / 4),
                  ResponsiveText(
                    kFullLocation,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    textColor: kItemDescriptionColor,
                  ),
                ],
              )),
        ),
      ),
    ]);
  }
}
