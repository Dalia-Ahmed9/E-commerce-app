import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/ReusedComponent/CustomButton.dart';
import '../../model/ReusedComponent/Text.dart';
import '../../model/utils/Colors.dart';
import 'auth_google.dart';

class LoginScreeen extends GetWidget<authWithGoogle> {
  LoginScreeen({super.key});
  final GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Welcome',
                        size: 30,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'Sign in to continue',
                        size: 14,
                        color: AppColors.grayColor,
                      ),
                    ],
                  ),
                  GestureDetector(
                      child: CustomText(
                    text: 'Sign UP',
                    size: 20,
                    color: AppColors.softgreen,
                  )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //text form field is here

              Form(
                key: globalKey,
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      // onSubmitted: (value) => controller.email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "User Email",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: passwordController,
                      //onSubmitted: (value) => controller.password,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            child: CustomText(
                                text: 'Forgot Your password?',
                                size: 11,
                                color: AppColors.blueColor))),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.SignIn(emailController.text.trim(),
                            passwordController.text.trim());
                      },
                      child: CustomButton(
                        text: 'Login in',
                        width: MediaQuery.of(context).size.width / 0.5,
                        ontap: () {},
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grayColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      CustomText(
                          text: 'Login with Facebook',
                          size: 20,
                          color: AppColors.blackColor)
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    //  controller.googleAuth();
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grayColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          size: 30,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        CustomText(
                            text: 'Login with google',
                            size: 20,
                            color: AppColors.blackColor)
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
