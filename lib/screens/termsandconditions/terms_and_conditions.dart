import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/color_constants.dart';
import 'package:mero_discountsv2/core/utils/asset_provider.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

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
                        "Terms & Conditions",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveText(
                        "Please read the Terms and Conditions carefully before using merodiscounts.com and do not use the Mero Discounts website or Mobile Application if you do not agree to these Terms and Conditions",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Introduction",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      ResponsiveText(
                        "MeroDiscounts.com is owned and operated by OCG Software Pvt Ltd. Our Services are limited to providing service to our customers from our merchants/ vendors. We are in no way responsible for the quality of services, products, and their packaging offered by its merchant members.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Acceptance of Terms & Conditions: www.merodiscounts.com and Mero Discounts are registered website and mobile applications respectively, of Backdrop Pty Ltd. Terms & conditions listed here apply to the use of the website, mobile app, or any services offered through this website and mobile app. By using the website, mobile app, or any services offered, you agree to the Terms & Conditions. The term “Mero Discounts” will be applicable to either one or both the services offered i.e., website and mobile application.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "We will keep updating and modifying our Terms & Conditions without any prior notice and revised Terms & conditions will be a bounding agreement. It will be the user’s responsibility to review them from time to time. At any point, you don’t agree, you can refrain from using Mero Discounts.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "We might email you information regarding your activities, updates and services offered by us.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Conditions of Use",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or by reason of such request or invalidation.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "You are responsible for maintaining the confidentiality of your user identification, password, account details and related private information. You agree to accept this responsibility and ensure your account and its related details are maintained securely at all times and all necessary steps are taken to prevent misuse of your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner. You agree and acknowledge that any use of the Site and related services offered and/or any access to private information, data or communications using your account and password shall be deemed to be either performed by you or authorized by you as the case may be. You agree to be bound by any access of the Site and/or use of any services offered by the Site (whether such access or use are authorized by you or not). You agree that we shall be entitled (but not obliged) to act upon, rely on or hold you solely responsible and liable in respect thereof as if the same were carried out or transmitted by you. You further agree and acknowledge that you shall be bound by and agree to fully indemnify us against any and all losses arising from the use of or access to the Site through your account.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Please ensure that the details you provide us with are correct and complete at all times. You are obligated to update details about your account in real time by accessing your account online. For pieces of information, you are not able to update by accessing Your Account on the Site, you must inform us via our customer service communication channels to assist you with these changes. We reserve the right to refuse access to the Site, terminate accounts, remove or edit content at any time without prior notice to you. We may at any time in our sole and absolute discretion, request that you update your Personal Data or forthwith invalidate the account or related details without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by or caused by you or arising out of or in connection with or by reason of such request or invalidation. You hereby agree to change your password from time to time and to keep your account secure and also shall be responsible for the confidentiality of your account and liable for any disclosure or use (whether such use is authorized or not) of the username and/or password.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Platform for communication",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "You agree, understand and acknowledge that the Site is an online platform that enables you to purchase products listed at the price indicated therein at any time from any location using a payment method of your choice (Mero Discounts may charge you a fee for choosing various options available on the platform). You further agree and acknowledge that we are only a facilitator and cannot be a party to or control in any manner any transactions on the Site or on a payment gateway as made available to you by an independent service provider. Accordingly, the contract of sale of products on the Site shall be a strictly bipartite contract between you and the sellers on our Site while the payment processing occurs between you, the service provider and in case of prepayments with electronic cards your issuer bank. Accordingly, the contract of payment on the Site shall be strictly a bipartite contract between you and the service provider as listed on our Site.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "Continued Availability of the Site",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "We will do our utmost to ensure that access to the Site is consistently available and is uninterrupted and error-free. However, due to the nature of the Internet and the nature of the Site, this cannot be guaranteed. Additionally, your access to the Site may also be occasionally suspended or restricted to allow for repairs, maintenance, or the introduction of new facilities or services at any time without prior notice. We will attempt to limit the frequency and duration of any such suspension or restriction.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Use of products and services",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                      ResponsiveText(
                        "It shall be user’s responsibility to carefully use the products and services offered by us. Mero Discounts does not guarantee any availability or refusal of the services offered by the merchants. There can be instances when the merchants do not avail of the discounts for any particular reason. Mero Discounts shall not be held responsible for any such unforeseen circumstances. Users will be responsible for the comments or reviews posted and Mero Discounts cannot be held responsible for any such comments. The user agrees to refrain from using any abusive, offensive, vulgar or objectionable comments to anybody in the website/mobile app. Mero Discounts reserves the rights to terminate the membership if a user is found to be using those means.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Terms & Conditions for all Mero Discounts (Discounts)",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "MeroDiscounts discounts do not have and cannot be redeemed for any cash value. It is illegal for the users to sell these discounts for any price to other users. MeroDiscounts discounts are strictly meant to be used for your personal use and any commercialization of the discounts may result in cancellation of your MeroDiscounts membership with no explanation. No claims can be made for any unused and expired discounts offer. Merodiscounts discounts are issued by its merchants and not MeroDiscounts. MeroDiscounts discounts will also have an expiry date. In case of any termination of any merchants for any reasons, all the unused discounts offer pertaining to the specific merchants will be void thereafter. No claims by the users or merchants will be entertained.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Conditions for use of MeroDiscounts",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Use of MeroDiscounts is meant for personal, non-commercial use and at user’s own risk. There may be data loss due to unforeseen interruptions and Merodiscounts shall not be responsible. Merodiscounts can change the content or services provided at any given time. Merodiscounts may be unavailable for maintenance or any other reason. Any damages pertaining to use of Merodiscounts with respect to Trojans or any viruses will not be the responsibility of Merodiscounts. The users should abide to all the rules and regulations and no illegal activity in any form is permitted.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "In case of any dispute, the user and restaurant owner agree to discontinue membership and will not held any team member of Merodiscounts responsible. Merodiscounts shall not be liable for any incurred damages, whatsoever it may be.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Prices and other information",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "The information regarding price, product specifications and availability contained on the Site has been provided by member merchants. The prices charged by the member merchants on this website are generally the different as the prices charged in their physical stores at the time an order is delivered, shipped, available for pickup or dine in because of discounts. Merodiscounts attempts to make certain that out-of-stock items are clearly marked or removed from the inventory, prices and product availability may change, particularly if you select a delivery, take away or pickup date that is different from the date on which you place your order.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "While MeroDiscounts has undertaken to confirm the accuracy of the information contained on this Site, mistakes can be made, due both to inaccurate reporting of accurate information and accurately reporting inaccurate information. Of course, if you become aware that the Site contains inaccurate information, please let us know by contacting us.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Ordering and Payment",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "All ordering is performed online or via telephone. Buyers are usually billed directly by merchant members for their orders, and MeroDiscounts will be the name that appears on the bills you receive from the merchants. But MeroDiscounts may provide you separate delivery slip and redemption slips in case there is any delivery charges or cash back offer. MeroDiscounts shall not in any manner be considered the seller of the products and services. You need to pay for the ordered products or services in advance through online or in Cash to us or at the time of delivery to our delivery staff.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Refund Policy",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "MeroDiscounts takes customer satisfaction very seriously. In the case of problems with your products or service order, please contact us. In appropriate cases, MeroDiscounts will issue full or partial refunds. For example: if you did not receive your order or received an incorrect order, you may be issued a full refund; if part of your order is missing, we may issue a partial refund. In every event, we will do our best to ensure your satisfaction.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kTextIcon),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Property rights in the site and content; informational purposes and compliance with law",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "The Site and the Content are our property and are protected by applicable copyright, patent, trademark and other intellectual property laws. Except as expressly authorized herein, you may not reproduce, transmit, sell, display, distribute, publish, broadcast, circulate, modify, disseminate or commercially exploit the Site or the Content in any manner (including electronic, print or other media now known or hereafter developed) without our written consent. Use of the Site or the Content in violation of these Terms of Use, or any applicable law, rule or regulation (whether of Nepal or other countries), or the rights of any third party is prohibited. You agree not to use the Site or the Content for any unlawful purposes and comply with any and all requests from us to protect our respective rights in the Site and the Content. You may use the Site and the Content only for your personal use. You may download the Content to your computer and print out a hard copy for your reference and internal use and display, but you will not remove any copyright or other notices contained in the Content. We expressly prohibit the use of devices (including software) designed to provide repeated automated access to the Site and the Content for any commercial purpose except for those expressly authorized by us. We reserve the right to take any and all measures necessary to prevent such access, including denial or termination of your access to the Site. If you have any questions about any materials posted on the Site, we urge you contact your Foodmandu.com representative.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "NON-MERODISOUNTS CONTENT; PRODUCTS AND SERVICES MENTIONED ON THE SITE",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "We neither endorse nor are responsible for the accuracy or reliability of any opinion, advice or statement made on the Site by anyone other than authorized merodiscounts.com employee spokespersons while acting in their official capacities.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "We do not review and assume no responsibility for any content received from, or created by, any third parties. Furthermore, we do not review and assume no responsibility for any products or services mentioned on the Site, whether provided by merodisccounts.com, affiliated companies or unaffiliated third parties. You agree to make your own independent evaluation of the products and services mentioned on the Site, including their quality.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "No Obligation to keep information Current",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "We are not under any obligation to update the Content to reflect circumstances that may occur after its initial publication date. Due to legal restrictions or other reasons, we may not update any Content including to take into account material changes or new information.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "User Codes",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "In connection with your use of or access to the Site, we from time to time may provide you with user names, passwords and/or other unique identifiers (User Codes). You are responsible for security and confidentiality of the User Codes and agree not to disclose them to any third party, including, if you are accessing the Site on behalf of any company or organization, any other employee in your company or organization. You are responsible for any and all information provided and any and all acts and/or omissions that occur while User Codes are being used. We are not responsible for any breach of security caused by your failure to maintain the confidentiality and security of any of the User Codes. You agree to notify us immediately in the event of loss, theft or disclosure of any or all of the User Codes, if you believe the confidentiality or security of any or all of the User Codes has been compromised in any way or in the event of your learning about a possible or actual unauthorized access to and/or use of the Site. We reserve the right to revoke or modify the User Codes at any time without prior notice.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Consent to recording and mentoring",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "You consent to our recording, retention and use of all information and data that you input or otherwise communicate during your access to and/or use of the Site or through any e-mail to or from us and any other electronic communication means and the transmittal of the same to our affiliates, subsidiaries, branches and third parties for order and other processing, database maintenance, record keeping or any other use in accordance with customary practices, policies and procedures applicable in Nepal and, of course, our privacy policies. In addition, we may disclose such information to the extent that we determine in good faith to be required by any applicable laws, rules or regulations or order or in enforcement of our rights or the defense of claims. We expressly reserve the right to monitor any and all use of the Site.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Consent of recording of telephone calls",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "You acknowledge that from time to time, we may record certain telephone calls used for the customer service and/or related purposes, and to the extent that any such recording occurs involving you, you consent to such recording.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "Limitations of Liability",
                        fontWeight: FontWeight.w700,
                        textColor: Color(kTextIcon),
                        fontSize: 14,
                      ),
                      SizedBox(height: kHorizontalMargin,),
                       ResponsiveText(
                        "In no event shall MeroDiscounts or its directors, members, employees, or agents be liable to you or any third party for any indirect, consequential, exemplary, incidental, special or punitive damages, including lost profit damages arising from your use of the website or MeroDiscounts services, even if MeroDiscounts has been advised of the possibility of such damages. Notwithstanding anything to the contrary contained herein, MeroDiscounts liability to you for any cause whatsoever and regardless of the form of the action, will at all times be limited to the amount paid, if any, by you to MeroDiscounts for MeroDiscounts services during the period of 1 month prior to any cause of action arising.",
                        fontWeight: FontWeight.w400,
                        textColor: Color(kBaseLight),
                        fontSize: 12,
                      ),
                      
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