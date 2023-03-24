import 'package:flutter/material.dart';
import 'package:new_e_commerce/model/ReusedComponent/Text.dart';
import 'package:new_e_commerce/model/utils/Colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.text,
    required this.onSave,
    required this.validator,
  });
  final String hintText;
  final String text;
  final String? Function(String?) onSave;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.grayColor,
          ),
          fillColor: AppColors.whiteColor),
      validator: validator,
      onSaved: onSave,
    );
  }
}
