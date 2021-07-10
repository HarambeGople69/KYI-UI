import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/pages/newBankAccount.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customButton.dart';
import 'package:myapp/widget/customContinue.dart';
import 'package:myapp/widget/titleText.dart';

class DocumentUpload extends StatefulWidget {
  const DocumentUpload({Key? key}) : super(key: key);

  @override
  _DocumentUploadState createState() => _DocumentUploadState();
}

class _DocumentUploadState extends State<DocumentUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Document Upload",
          style: AppStyle,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .86,
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(50),
          vertical: ScreenUtil().setSp(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PercentStepper(
              currentIndex: 5,
            ),
            TitleText(
              title: "Your Document",
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewBankAccount();
                }));
              },
              child: CustomButton(
                title: "Add new bank account",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewBankAccount();
                }));
              },
              child: CustomButton(
                title: "Add new bank account",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewBankAccount();
                }));
              },
              child: CustomButton(
                title: "Add new bank account",
              ),
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Profile(
                      complete: true,
                    );
                  }));
                },
                child: CustomContinue()),
          ],
        ),
      ),
    );
  }
}
