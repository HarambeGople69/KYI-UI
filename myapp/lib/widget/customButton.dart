import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  const CustomButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: ScreenUtil().setSp(30),
      ),
      alignment: Alignment.center,
      height: ScreenUtil().setSp(160),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            ScreenUtil().setSp(50),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 20, offset: Offset(2, 4), color: Color(0xffc7c7c7))
          ]),
      width: double.infinity,
      child: Text(
        title!,
        style: TextStyle(
            color: Color(0xff2A9FDB),
            fontSize: ScreenUtil().setSp(65),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
