import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../review/review_page.dart';

class EditReviewPage extends StatefulWidget {
  const EditReviewPage({super.key});

  @override
  State<EditReviewPage> createState() => _EditReviewPageState();
}

class _EditReviewPageState extends State<EditReviewPage> {
  double _rating=3;
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
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: kVerticalMargin / 8),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kHorizontalMargin * 2, vertical: kVerticalMargin),
                      color: kDefaultIconLightColor,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: height * 0.08,
                                width: height * 0.08,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      child: CachedNetworkImage(
                                          imageUrl:
                                          'https://merodiscounts.com/storage/media/service/siVYRMjjzgRQi6q7GNrAk7OvjRbB2q39LtLQZsmn.jpg',
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: kVerticalMargin / 2),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ResponsiveText('Family Combo x 1',
                                          fontWeight: FontWeight.w600, fontSize: 16),
                                      SizedBox(height: kVerticalMargin / 2),
                                      ResponsiveText(
                                        'Chicken Biryani, Mushroom Pizza Medium, Spicy Chicken Wings,French Fries, Coke 1000 ml',
                                        fontSize: 12,
                                        textColor: kItemDescriptionColor,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                initialRating: _rating.toDouble(),
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: kGreenBorderColor,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(() {
                                    _rating=rating;
                                  });

                                },
                              ),
                            ],
                          ),
                          ResponsiveText(getTextForRating(_rating),textColor: Colors.amber,textAlign: TextAlign.center,),
                          SizedBox(height: kVerticalMargin/2),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: kGreenBorderColor),
                                color: kGreenShadowColor
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    Assets.svgImages.circleCheck
                                ),
                                SizedBox(width: kHorizontalMargin),
                                Expanded(
                                  child: ResponsiveText(
                                    (_rating >=1.0 && _rating<=3 ? "Thanks for your rating. We're sorry to hear that, please tell us more so we can improve.":"Thanks for rating. Please tell us more!"),textColor: kGreenBorderColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: kVerticalMargin/2),
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
                          ResponsiveText('Add Photos',fontSize: 16,fontWeight: FontWeight.w600),
                          SizedBox(height: kVerticalMargin/2),
                          Row(
                            children: [
                              Container(
                                height: height*0.1,
                                child: ClipRRect(
                                  child: CachedNetworkImage(
                                      imageUrl:
                                      'https://merodiscounts.com/storage/media/service/309/offers/9pvxuY9LhVOZesIqOb5LXVwmIWDsbFu2eM7tjbmp.png',
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(width: kHorizontalMargin),
                              Container(
                                height: height*0.1,
                                child: ClipRRect(
                                  child: CachedNetworkImage(
                                      imageUrl:
                                      'https://merodiscounts.com/storage/media/service/309/offers/hn3kNg5ZE1howjfX9GWbhFMp3gebinM1O1adXpFd.png',
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(width: kHorizontalMargin),
                              DottedBorder(
                                dashPattern: [3, 3, 3, 3],
                                color: kPrimaryColor,
                                strokeWidth:2,
                                padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        Assets.svgImages.camera
                                    ),
                                    ResponsiveText(
                                      kAddPhoto,textColor: kPrimaryColor,
                                    ),
                                    ResponsiveText(
                                      '2/6',textColor: kPrimaryColor,
                                    ),

                                  ],

                                ),
                              )
                            ],
                          ),
                          SizedBox(height: kVerticalMargin/2),


                        ],
                      ),
                    ),
                    SizedBox(height: kVerticalMargin/2),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ResponsiveText(kWriteReview,fontWeight: FontWeight.w600,fontSize: 16),
                          SizedBox(height: kVerticalMargin),
                          Container(
                            height: height*0.1,
                            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color:kSearchBorderColor ),
                            ),
                            child: ResponsiveText(
                                'The food was really awesome',fontWeight: FontWeight.w500,fontSize: 14,

                            ),
                          ),
                          SizedBox(height: kVerticalMargin),

                        ],
                      ),
                    ),
                    SizedBox(height: kVerticalMargin/2),
                    Container(
                      color: kDefaultIconLightColor,
                      padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin,vertical: kVerticalMargin),
                      child: Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool? value) {  },checkColor: kDefaultIconLightColor,activeColor: kPrimaryColor,),
                          ResponsiveText('Show Name')
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin*2,vertical: kVerticalMargin),
              color: kDefaultIconLightColor,
              child: ElevatedButton(
                  onPressed: () {},
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
            ),
          ],
        ));
  }
}






String getTextForRating(double rating) {
  switch (rating.toInt()) {
    case 1:
      return 'Terrible';
    case 2:
      return 'Poor';
    case 3:
      return 'Fair';
    case 4:
      return 'Good';
    case 5:
      return 'Excellent';
    default:
      return '';
  }
}