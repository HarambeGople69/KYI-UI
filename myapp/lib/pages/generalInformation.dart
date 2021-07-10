import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/pages/individualDetail.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customContinue.dart';
import 'package:myapp/widget/customDrop.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/dash.dart';
import 'package:myapp/widget/textField.dart';
import 'package:myapp/widget/titleText.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({Key? key}) : super(key: key);

  @override
  _GeneralInformationState createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  TextEditingController mobNumber = TextEditingController();
  TextEditingController panNumber = TextEditingController();
  TextEditingController emailNumber = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController munController = TextEditingController();
  TextEditingController wardController = TextEditingController();
  TextEditingController ToleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Information",
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(50),
            vertical: ScreenUtil().setSp(20),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PercentStepper(
                  currentIndex: 1,
                ),
                TitleText(
                  title: "Your General Information",
                ),
                // CustomSpacer(),
                CustomDrop(
                  hint: "Client Type",
                  valueChooseList: ["A", "B", "C", "D", "E"],
                ),
                CustomSpacer(),
                CustomField(
                  title: "Mobile Number",
                  icon: Icons.person,
                  controller: mobNumber,
                  inputType: TextInputType.number,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "PAN Number",
                  // icon: Icons.person,
                  controller: panNumber,
                  inputType: TextInputType.number,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Email Number",
                  // icon: Icons.person,
                  controller: emailNumber,
                  inputType: TextInputType.emailAddress,
                  see: false,
                ),
                // CustomSpacer(),
                TitleText(
                  title: "Your Address",
                ),
                // CustomSpacer(),
                CustomDrop(
                  hint: "Country of Residence",
                  valueChooseList: ["A", "B", "C", "D", "E"],
                ),
                CustomSpacer(),
                CustomDrop(
                  hint: "Province",
                  valueChooseList: [
                    "Provience 1",
                    "Provience 2",
                    "Provience 3",
                    "Provience 4",
                    "Provience 5",
                    "Provience 6",
                    "Provience 7",
                  ],
                ),
                CustomSpacer(),
                CustomField(
                  title: "District",
                  // icon: Icons.person,
                  controller: districtController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Municipality",
                  // icon: Icons.person,
                  controller: munController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Ward Number",
                  // icon: Icons.person,
                  controller: wardController,
                  inputType: TextInputType.number,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Tole/Street",
                  // icon: Icons.person,
                  controller: ToleController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),

                InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return IndividualDetail();
                        }));
                      }
                    },
                    child: CustomContinue()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
