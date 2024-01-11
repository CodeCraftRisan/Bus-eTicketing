import 'package:bustics/controllar/AuthController.dart';

import 'package:bustics/core/app_export.dart';

import 'package:bustics/widgets/custom_elevated_button.dart';

import 'package:bustics/widgets/custom_text_form_field.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore_for_file: must_be_immutable

class SignupPageScreen extends StatelessWidget {
  SignupPageScreen({Key? key}) : super(key: key);

  //TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Create Account Now!",
                          style: theme.textTheme.displaySmall)),
                  SizedBox(height: 4.v),
                  _buildFullNameSection(context),
                  SizedBox(height: 5.v),
                  _buildEmailSection(context, authController),
                  SizedBox(height: 3.v),
                  _buildPasswordSection(context, authController),
                  SizedBox(height: 10.v),
                  _buildPhoneNoSection(context),
                  SizedBox(height: 43.v),
                  CustomElevatedButton(
                      text: "Sign Up",
                      margin: EdgeInsets.only(left: 6.h, right: 2.h),
                      onPressed: () {
                        authController.signUpWithEmailAndPwd();

                        onTapSignUp(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget

  Widget _buildFullNameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text("Full Name", style: theme.textTheme.titleLarge)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: CustomTextFormField(
                  borderDecoration: TextFormFieldStyleHelper.fillDeepOrange))
        ]));
  }

  /// Section Widget

  Widget _buildEmailSection(
      BuildContext context, AuthController authController) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("Email", style: theme.textTheme.titleLarge)),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: CustomTextFormField(
                controller: authController.emailController,
              ))
        ]));
  }

  /// Section Widget

  Widget _buildPasswordSection(
      BuildContext context, AuthController authController) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text("Password", style: theme.textTheme.titleLarge)),
          SizedBox(height: 7.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: CustomTextFormField(
                  controller: authController.passwordController,
                  obscureText: true))
        ]));
  }

  /// Section Widget

  Widget _buildPhoneNoSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Text("Phone No", style: theme.textTheme.titleLarge)),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: CustomTextFormField(textInputAction: TextInputAction.done))
        ]));
  }

  /// Navigates to the loginPageScreen when the action is triggered.

  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
