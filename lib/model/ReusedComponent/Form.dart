import 'package:flutter/material.dart';
import 'package:new_e_commerce/model/ReusedComponent/Text.dart';
import 'package:new_e_commerce/model/utils/Colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.Iconn,
    required this.myController,
    required this.labelText,
  });
  final String hintText;

  final IconData Iconn;
  final TextEditingController myController;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9),
            child: Text(labelText),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.grayColor,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          suffixIcon: Icon(Iconn),
          fillColor: AppColors.whiteColor),
    );
  }
}
