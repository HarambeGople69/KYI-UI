import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContinue extends StatelessWidget {
  const CustomContinue({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: ScreenUtil().setSp(150),
                decoration: BoxDecoration(
                  color: Color(0xff2A9FDB),
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setSp(30),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil().setSp(80),
                  ),
                ),
              );
  }
}