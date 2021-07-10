import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDone extends StatelessWidget {
  final bool? complete;
  const CustomDone({Key? key, this.complete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil().setSp(150),
      decoration: BoxDecoration(
        color: complete! ? Color(0xff2A9FDB) : Colors.grey,
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(30),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        "Done",
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
