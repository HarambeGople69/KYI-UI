import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  final String? title;
  const TitleText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        title!,
        style: TextStyle(
            color: Color(0xff3E3E3E),
            fontSize: ScreenUtil().setSp(60),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
