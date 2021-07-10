import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomField extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool? see;
  final IconData? trailIcon;

  const CustomField(
      {Key? key,
      this.title,
      this.icon,
      this.controller,
      this.inputType,
      this.see,
      this.trailIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? value) {
        if (value!.trim().isNotEmpty) {
          return null;
        } else {
          return "Invalid entry";
        }
      },
      obscureText: see!,
      keyboardType: inputType,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setSp(50),
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0xffBCBCBC),
          ),
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(30),
          ),
          suffixIcon: Icon(trailIcon),
          labelText: title,
          labelStyle: TextStyle(color: Color(0xffBCBCBC))),
    );
  }
}
