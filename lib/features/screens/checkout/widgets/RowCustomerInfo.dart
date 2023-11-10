import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/util.dart';
import '../../../widgets/responsive_text.dart';

class RowCustomerInfo extends StatelessWidget {
  String imageAsset;
  String text;

  RowCustomerInfo({required this.imageAsset, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imageAsset),
        SizedBox(width: kHorizontalMargin),
        Expanded(child: ResponsiveText(text)),

      ],
    );
  }
}


