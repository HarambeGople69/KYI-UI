import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatefulWidget {
  final String? title;
  bool? check;
  CustomSwitch({Key? key, this.title, this.check}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title!,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(45),
            color: Colors.black,
          ),
        ),
        Spacer(),
        Switch(
          onChanged: (value) {
            setState(() {
              widget.check = value;
            });
          },
          value: widget.check!,
          activeColor: Color(0xffD03339),
          activeTrackColor: Color(0xff650206),
          inactiveThumbColor: Color(0xffD03339),
          inactiveTrackColor: Color(0xffFAE1E2),
        ),
      ],
    );
  }
}
