import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrop extends StatefulWidget {
  String? valueChoose;
  String? hint;
  List<String>? valueChooseList;
  CustomDrop({Key? key, this.valueChoose, this.hint, this.valueChooseList})
      : super(key: key);

  @override
  _CustomDropState createState() => _CustomDropState();
}

class _CustomDropState extends State<CustomDrop> {
  @override
  Widget build(BuildContext context) {
    String? value = widget.valueChoose;
    return Container(
      padding: EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ScreenUtil().setSp(50),
          ),
          border: Border.all(
            color: Color(0xffBCBCBC),
          )),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(widget.hint!),
              value: widget.valueChoose,
              onChanged: (String? value) {
                setState(() {
                  widget.valueChoose = value;
                  print(value);
                });
              },
              items: widget.valueChooseList!.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()),
        ),
      ),
    );
  }
}
