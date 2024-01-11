import 'package:bustics/core/app_export.dart';
import 'package:bustics/widgets/app_bar/appbar_title.dart';
import 'package:bustics/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bustics/widgets/app_bar/custom_app_bar.dart';
import 'package:bustics/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBusLogo1,
                      height: 162.v,
                      width: 299.h,
                      radius: BorderRadius.circular(30.h)),
                  SizedBox(height: 17.v),
                  Text("Hello , Welcome !",
                      style: theme.textTheme.displaySmall),
                  SizedBox(height: 5.v),
                  Container(
                      width: 291.h,
                      margin: EdgeInsets.only(left: 19.h, right: 27.h),
                      child: Text("Welcome to BUSTic.Find Bus in Dhaka City ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                      height: 57.v,
                      text: "Login",
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                      text: "Sign Up",
                      margin: EdgeInsets.only(right: 8.h),
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(text: "BUSTic", margin: EdgeInsets.only(left: 64.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(25.h, 11.v, 25.h, 10.v))
        ]);
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Navigates to the signupPageScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupPageScreen);
  }
}
