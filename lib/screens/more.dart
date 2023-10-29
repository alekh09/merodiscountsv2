import 'package:flutter/material.dart';
import 'package:mero_discountsv2/core/constants/string_constants.dart';
import 'package:mero_discountsv2/core/utils/util.dart';
import 'package:mero_discountsv2/features/widgets/responsive_text.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key}); // Fixed the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(color: Colors.white),
            child: Column( // Changed to Column to stack widgets vertically
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText(
                  KProfile,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                SizedBox(height: 2),
                ResponsiveText(
                  "Login or Sign Up to view your complete profile.",
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: kVerticalMargin),
                SizedBox(
                  width: 450,
                  child: ElevatedButton(
                    onPressed: () {
                      //
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFF0EB), // Background color
                      onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 16,
                      color: Color(0xffFC4704)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
