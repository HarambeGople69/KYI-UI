import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/bankDetail.dart';
import 'package:myapp/pages/depositoryDetail.dart';
import 'package:myapp/pages/documentUpload.dart';
import 'package:myapp/pages/generalInformation.dart';
import 'package:myapp/pages/individualDetail.dart';
import 'package:myapp/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 1920),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(),
                color: Colors.transparent,
                elevation: 0,
              ),
              fontFamily: "inter",
              primaryColor: Color(0xff2A9FDB),
            ),
            home: Profile(complete: false,),
          );
        });
  }
}
