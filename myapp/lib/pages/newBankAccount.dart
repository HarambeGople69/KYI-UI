import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/widget/customDrop.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/textField.dart';
import 'package:myapp/widget/titleText.dart';

class NewBankAccount extends StatefulWidget {
  const NewBankAccount({Key? key}) : super(key: key);

  @override
  _NewBankAccountState createState() => _NewBankAccountState();
}

class _NewBankAccountState extends State<NewBankAccount> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  List<String> valueChooseList = ["1", "2", "3", "4", "5", "6", "7", "8"];
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New bank account",
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(50),
            vertical: ScreenUtil().setSp(20),
          ),
          child: Column(
            children: [
              TitleText(
                title:
                    "Bank account owner's name must be match your name on your indentification card",
              ),
              CustomField(
                title: "Bank account owner name",
                icon: Icons.person,
                controller: nameController,
                inputType: TextInputType.name,
                see: false,
              ),
              CustomSpacer(),
              CustomField(
                title: "Bank account number",
                icon: Icons.home,
                controller: numberController,
                inputType: TextInputType.number,
                see: false,
              ),
              CustomSpacer(),
              CustomDrop(
                hint: "Bank Name",
                valueChooseList: ["1", "2", "3", "4", "5", "6", "7", "8"],
              ),
              CustomSpacer(),
              CustomDrop(
                hint: "Bank Branch",
                valueChooseList: ["1", "2", "3", "4", "5", "6", "7", "8"],
              ),
              CustomSpacer(),
              CustomDrop(
                hint: "Account Type",
                valueChooseList: ["1", "2", "3", "4", "5", "6", "7", "8"],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
