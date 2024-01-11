import 'package:bustics/controllar/AuthController.dart';
import 'package:bustics/core/app_export.dart';
import 'package:bustics/widgets/app_bar/appbar_title.dart';
import 'package:bustics/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bustics/widgets/app_bar/custom_app_bar.dart';
import 'package:bustics/widgets/custom_elevated_button.dart';
import 'package:bustics/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();

  TextEditingController pwd = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    AuthController authController = Get.put(AuthController());
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 16.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text("Welcome Back!",
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 18.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text("Login to continue",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 24.v),
                  _buildWelcomeBack(context),
                  SizedBox(height: 17.v),
                  _buildLoginForm(context),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                    height: 60.v,
                    text: "Login",
                    margin: EdgeInsets.only(left: 12.h),
                    onPressed: () {
                      //AuthController authController = AuthController();
                      authController.loginWithEmailAndPwd(email.text, pwd.text);
                    },
                  ),
                  SizedBox(height: 45.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDonthaveanaccount(context);
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Don’t have an account? ",
                                style: CustomTextStyles
                                    .labelLargeWhiteA700SemiBold),
                            TextSpan(
                                text: "Sign Up",
                                style: theme.textTheme.labelLarge!.copyWith(
                                    decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(text: "BUSTic", margin: EdgeInsets.only(left: 75.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPepiconsPopMenu,
              margin: EdgeInsets.fromLTRB(29.h, 4.v, 29.h, 16.v),
              onTap: () {
                onTapPepiconsPopMenu(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildWelcomeBack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text("E-mail", style: theme.textTheme.titleLarge)),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: CustomTextFormField(
                  controller: email,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  fillColor: theme.colorScheme.onPrimaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text("Password", style: theme.textTheme.titleLarge)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: CustomTextFormField(
                  controller: pwd,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  fillColor: theme.colorScheme.onPrimaryContainer))
        ]));
  }

  /// Navigates to the welcomePageScreen when the action is triggered.
  onTapPepiconsPopMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomePageScreen);
  }

  /// Navigates to the signupPageScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupPageScreen);
  }
}
