import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/bankDetail.dart';
import 'package:myapp/pages/depositoryDetail.dart';
import 'package:myapp/pages/documentUpload.dart';
import 'package:myapp/pages/generalInformation.dart';
import 'package:myapp/pages/individualDetail.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customDone.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/customTile.dart';
import 'package:myapp/widget/dash.dart';
import 'package:myapp/widget/titleText.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constant.dart';

class Profile extends StatefulWidget {
  final bool? complete;
  const Profile({Key? key, this.complete}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("KYC", style: AppStyle),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(30),
          vertical: ScreenUtil().setSp(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PercentStepper(
              currentIndex: 0,
            ),
            TitleText(
              title: "Required Information",
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GeneralInformation();
                }));
              },
              child: CostumTile(
                title: "General Information",
                subtile: "PAN, mobile, email and address",
                status: "Awaiting ",
                color: Color(0xffBCBCBC),
              ),
            ),
            CustomSpacer(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IndividualDetail();
                }));
              },
              child: CostumTile(
                title: "Individual Detail",
                subtile: "Name, parents details, citizenship details",
                status: "Updated",
                color: Color(0xff2A9FDB),
              ),
            ),
            CustomSpacer(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BankDetail();
                }));
              },
              child: CostumTile(
                title: "Bank Detail",
                subtile: "Your bank details",
                status: "Missing",
                color: Color(0xffFBBD36),
              ),
            ),
            CustomSpacer(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DepositoryDetail();
                }));
              },
              child: CostumTile(
                title: "Depository Details",
                subtile: "Demat number",
                status: "Awaiting",
                color: Color(0xffBCBCBC),
              ),
            ),
            CustomSpacer(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DocumentUpload();
                }));
              },
              child: CostumTile(
                title: "Documents Upload",
                subtile: "Citizenship, photo upload",
                status: "Awaiting",
                color: Color(0xffBCBCBC),
              ),
            ),
            CustomSpacer(),
            CostumTile(
              title: "Family Registration",
              subtile: "Student ID, image",
              status: "Awaiting",
              color: Color(0xffBCBCBC),
            ),
            CustomSpacer(),
            CustomDone(
              complete: widget.complete,
            )
          ],
        ),
      )),
    );
  }
}
