import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgImages.back_icon
                      ),
                      SizedBox(width: kHorizontalMargin,),
                      ResponsiveText(
                        "Privacy Policy",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      
                    ],
                  ),
                ),
              ),
              Divider(height: 2, color: Color(kBaseLight),),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                  child: Column(
                    children: [
                      // Icon(
                      //   Icons.policy
                      // ),
                      ResponsiveText(
                        "The Privacy Policy can be updated any time without prior notice and the revised Privacy Policy is effective immediately when posted. It will be users’ responsibility to review the Privacy Policy for the changes. Using the site, mobile app and any services offered acknowledges your acceptance of the modified privacy policy.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We may collect and store identifiable information when you sign up with MeroDiscounts which includes but is not limited to your name, email address, and phone number. We may also collect non-identifiable information including IP addresses to analyze trends, demographics etc.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We provide services jointly with our merchants/ partners (MeroDiscounts Merchants/ Partners). We share some of the information, in order to help them provide better services for our users. We may also share some information with our business partners. This will enable them to contact you for any services or products that may be of interest to you.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We may also share Identifiable Information when we believe release is appropriate to comply with the law or a court order; enforce or apply this Privacy Policy, MeroDiscounts terms and conditions; or protect the rights / safety of MeroDiscounts and its users.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We may share or disclose non-identifiable information with our partners to improve our quality. Summary information can be also published for promotional purposes.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "You can always choose not to provide information, although it may be required to engage in activities on MeroDiscounts. You can opt out of our promotional emails at any time you desire.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "Security of information is taken very seriously, and all precautions are taken to protect the security of information and data. Unfortunately, there is no absolute guarantee on secure data transmission over the Internet. Hence, we cannot guarantee the security of any information transmitted to or from the Website and will not be held responsible for the actions of any third parties that may receive any such information.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "This Privacy Policy only addresses the use and disclosure of information we collect from you. Other websites that may be accessible through us have their own privacy policies and we are not responsible for third parties' policies or practices.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "Data protection is a matter of trust, and your privacy is important to us. We shall therefore only use your name and other information which relates to you in the manner set out in this Privacy Policy. We will only collect information where it is necessary for us to do so, and we will only collect information if it is relevant to our dealings with you.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We will only keep your information for as long as we are either required to by law or as is relevant for the purposes for which it was collected.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                      ResponsiveText(
                        "We will cease to retain your personal data or remove the means by which the data can be associated with you, as soon as it is reasonable to assume that such retention no longer serves the purposes for which the personal data was collected and is no longer necessary for any legal or business purpose.",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                      ),
                      SizedBox(height: kVerticalMargin),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}