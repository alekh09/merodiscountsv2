import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/utils/asset_provider.dart';
import '../../../core/utils/util.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: EdgeInsets.all(kHorizontalMargin * 1.25),
            child: SvgPicture.asset(
              Assets.svgImages.arrowLeftLong,
              height: height * 0.025,
              width: height * 0.025,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: kToReview,
              ),
              Tab(text: kHistory),
            ],
            labelColor: kPrimaryColor,
            unselectedLabelColor: Colors.black,
            indicatorColor: kPrimaryColor,
          ),

          title: ResponsiveText('My Review', fontWeight: FontWeight.w600, fontSize: 16),
          centerTitle: true,
          backgroundColor: kDefaultIconLightColor,
        ),
        backgroundColor: Colors.grey.shade300,
        body: TabBarView(
          children: [
            // Content of Tab 1
            ListView.builder(
              itemCount: 6,
              itemBuilder:(context, index){
              return Column(
                children: [
                  Container(
                    color: kDefaultIconLightColor,
                    padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveText(kVendorsName,fontSize: 16,fontWeight: FontWeight.w600,),
                        SizedBox(height: kHorizontalMargin/4),
                        Row(
                          children: [
                            ResponsiveText(kPurchasedOn,fontSize: 12,textColor: kItemDescriptionColor,),
                            ResponsiveText("6 Oct, 2023",fontSize: 12,textColor: kItemDescriptionColor,)
                          ],
                        ),
                        SizedBox(height: kVerticalMargin),
                        Row(
                          children: [
                            Container(
                              height: height * 0.08,
                              width:  height * 0.08,
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: CachedNetworkImage(
                                        imageUrl:
                                        'https://merodiscounts.com/storage/media/service/siVYRMjjzgRQi6q7GNrAk7OvjRbB2q39LtLQZsmn.jpg',
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: kVerticalMargin/2),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ResponsiveText('Family Combo x 1',fontWeight: FontWeight.w600,fontSize: 16),
                                    SizedBox(height: kVerticalMargin/8),
                                    ResponsiveText('Chicken Biryani, Mushroom Pizza Medium, Spicy Chicken Wings,French Fries, Coke 1000 ml',fontSize: 12,textColor: kItemDescriptionColor,)
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.all(kHorizontalMargin/2),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(kPrimaryColor),
                                  ),
                                  child: ResponsiveText(
                                    kReview,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    textColor: kDefaultIconLightColor,
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kHorizontalMargin/4),

                ],
              );
              }
            ),
            // Content of Tab 2
            ListView.builder(
                itemCount: 2,
                itemBuilder:(context, index){
                  return Column(
                    children: [
                      Container(
                        color: kDefaultIconLightColor,
                        padding: EdgeInsets.symmetric(vertical: kVerticalMargin,horizontal: kHorizontalMargin*2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ResponsiveText(kVendorsName,fontSize: 16,fontWeight: FontWeight.w600,),
                                Container(
                                  padding: EdgeInsets.all(kHorizontalMargin/2),
                                    child: Row(
                                  children: [
                                    ResponsiveText(kEdit,fontSize: 14,fontWeight: FontWeight.w500,textColor: kPrimaryColor,),
                                    SizedBox(width: kHorizontalMargin/2),
                                    SvgPicture.asset(
                                      Assets.svgImages.pencil
                                    )

                                  ],
                                )),
                              ],
                            ),
                            SizedBox(height: kHorizontalMargin/8),
                            Row(
                              children: [
                                ResponsiveText(kPurchasedOn,fontSize: 12,textColor: kItemDescriptionColor,),
                                ResponsiveText("6 Oct, 2023",fontSize: 12,textColor: kItemDescriptionColor,)
                              ],
                            ),
                            SizedBox(height: kVerticalMargin),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.08,
                                  width:  height * 0.08,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        child: CachedNetworkImage(
                                            imageUrl:
                                            'https://merodiscounts.com/storage/media/service/siVYRMjjzgRQi6q7GNrAk7OvjRbB2q39LtLQZsmn.jpg',
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: kVerticalMargin/2),
                                Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ResponsiveText('Family Combo x 1',fontWeight: FontWeight.w600,fontSize: 16),
                                        SizedBox(height: kVerticalMargin/2),
                                        ResponsiveText('Chicken Biryani, Mushroom Pizza Medium, Spicy Chicken Wings,French Fries, Coke 1000 ml',fontSize: 12,textColor: kItemDescriptionColor,),
                                      ],
                                    )),

                              ],
                            ),
                            SizedBox(height: kVerticalMargin),
                            const Divider(height: 2,thickness: 2),
                            SizedBox(height: kVerticalMargin),
                            Container(child: Column(
                              children: [
                                ResponsiveText(kReviewDescription,textColor: kItemDescriptionColor),
                                SizedBox(height: kVerticalMargin/4),
                                Row(
                                  children: [
                                    SvgPicture.asset(Assets.svgImages.ratingreen),
                                    SizedBox(width: kHorizontalMargin/4),
                                    ResponsiveText("4.5/5")
                                  ],
                                ),
                                SizedBox(height: kVerticalMargin/4),
                                Container(
                                  height: height*0.1,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                      itemBuilder: (context, index){
                                      return Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: index == 0? 0: kHorizontalMargin/2, right: index == 11? 0: kHorizontalMargin/2, top: kVerticalMargin/2, bottom: kVerticalMargin/2),
                                            child: ClipRRect(
                                              child: CachedNetworkImage(
                                                  imageUrl:
                                                  'https://merodiscounts.com/storage/media/service/siVYRMjjzgRQi6q7GNrAk7OvjRbB2q39LtLQZsmn.jpg',
                                                  fit: BoxFit.cover
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            //width: width*0.25,
                                          ),

                                        ],
                                      );

                                  }),
                                )

                              ],
                            )),

                          ],
                        ),
                      ),
                      SizedBox(height: kHorizontalMargin/4),

                    ],
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
