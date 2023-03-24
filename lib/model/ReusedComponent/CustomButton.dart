// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:new_e_commerce/model/ReusedComponent/Text.dart';
import 'package:new_e_commerce/model/utils/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.width,
    required this.ontap,
    required this.text,
  }) : super(key: key);
  final double width;
  final double height = 50;
  final VoidCallback ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.softgreen,
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Center(
            child:
                CustomText(text: text, size: 20, color: AppColors.whiteColor)),
      ),
    );
  }
}
