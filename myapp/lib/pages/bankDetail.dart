import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/pages/depositoryDetail.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customButton.dart';
import 'package:myapp/widget/customContinue.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/titleText.dart';

class BankDetail extends StatefulWidget {
  const BankDetail({Key? key}) : super(key: key);

  @override
  BankDetailState createState() => BankDetailState();
}

class BankDetailState extends State<BankDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bank Details",
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
                currentIndex: 3,
              ),
              TitleText(title: "Your Bank"),
              CustomButton(
                title: "Add address",
              ),
              Spacer(),
              CustomSpacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DepositoryDetail();
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
