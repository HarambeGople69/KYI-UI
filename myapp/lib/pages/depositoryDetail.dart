import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/pages/documentUpload.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customButton.dart';
import 'package:myapp/widget/customContinue.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/titleText.dart';

class DepositoryDetail extends StatefulWidget {
  const DepositoryDetail({Key? key}) : super(key: key);

  @override
  _DepositoryDetailState createState() => _DepositoryDetailState();
}

class _DepositoryDetailState extends State<DepositoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Depository Detail",
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .86,
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(50),
            vertical: ScreenUtil().setSp(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PercentStepper(
                currentIndex: 4,
              ),
              TitleText(
                title: "Your BOID Number",
              ),
              CustomButton(
                title: "Add BOID Number",
              ),
              CustomSpacer(),
              Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DocumentUpload();
                    }));
                  },
                  child: CustomContinue()),
            ],
          ),
        ),
      ),
    );
  }
}
