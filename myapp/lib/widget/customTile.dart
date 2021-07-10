import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumTile extends StatefulWidget {
  final String? title;
  final String? subtile;
  final Color? color;
  final String? status;
  const CostumTile(
      {Key? key, this.title, this.subtile, this.color, this.status})
      : super(key: key);

  @override
  _CostumTileState createState() => _CostumTileState();
}

class _CostumTileState extends State<CostumTile> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        elevation: 3,
        // shadowColor: Colors.grey,
        child: ClipRRect(
          child: Container(
            height: ScreenUtil().setSp(200),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: widget.color!,
                  width: 10,
                ),
              ),
            ),
            child: ListTile(
              title: Text(
                widget.title!,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(60),
                    color: widget.color!,
                    fontWeight: FontWeight.w900),
              ),
              subtitle: Text(
                widget.subtile!,
                style: TextStyle(
                  color: Color(0xffBCBCBC),
                  fontSize: ScreenUtil().setSp(50),
                ),
              ),
              trailing: Container(
                width: 75,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.color,
                      radius: ScreenUtil().setSp(
                        15,
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setSp(10),
                    ),
                    Text(
                      widget.status!,
                      style: TextStyle(color: widget.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
