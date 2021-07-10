import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/pages/bankDetail.dart';
import 'package:myapp/widget/CustomPercentStepper.dart';
import 'package:myapp/widget/customContinue.dart';
import 'package:myapp/widget/customDrop.dart';
import 'package:myapp/widget/customSpace.dart';
import 'package:myapp/widget/customSwitch.dart';
import 'package:myapp/widget/textField.dart';
import 'package:myapp/widget/titleText.dart';

class IndividualDetail extends StatefulWidget {
  const IndividualDetail({Key? key}) : super(key: key);

  @override
  _IndividualDetailState createState() => _IndividualDetailState();
}

class _IndividualDetailState extends State<IndividualDetail> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  TextEditingController grandFatherNameController = TextEditingController();
  TextEditingController citizenshipNumberController = TextEditingController();
  TextEditingController citizenshipIssuePlaceController =
      TextEditingController();
  TextEditingController citizenshipIssueDateADController =
      TextEditingController();
  TextEditingController citizenshipIssueDateBSController =
      TextEditingController();

  TextEditingController companyNameController = TextEditingController();
  bool InvolvedCompany = false;
  bool NRN = false;
  bool Minor = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Detail", style: AppStyle),
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
                  currentIndex: 2,
                ),
                TitleText(
                  title: "Your Information",
                ),
                CustomField(
                  title: "Full Name",
                  icon: Icons.person,
                  controller: fullNameController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Father's Full Name",
                  icon: Icons.person,
                  controller: fatherNameController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Mother's Full Name",
                  icon: Icons.person,
                  controller: motherNameController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Grandfather's Full Name",
                  icon: Icons.person,
                  controller: grandFatherNameController,
                  inputType: TextInputType.name,
                  see: false,
                ),
                CustomSpacer(),
                CustomSwitch(
                  title: "Is NRN",
                  check: NRN,
                ),
                CustomSpacer(),
                CustomSwitch(
                  title: "Is Minor",
                  check: Minor,
                ),
                CustomSpacer(),
                CustomDrop(
                  hint: "Nationality",
                  valueChooseList: [
                    "Nepal",
                    "India",
                    "China",
                    "USA",
                    "Australia"
                  ],
                ),
                CustomSpacer(),
                CustomField(
                  title: "Citizenship Number",
                  icon: Icons.person,
                  controller: citizenshipNumberController,
                  inputType: TextInputType.number,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Citizenship Issue Place",
                  icon: Icons.location_city,
                  controller: citizenshipIssuePlaceController,
                  inputType: TextInputType.datetime,
                  trailIcon: Icons.calendar_today,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Citizenship Issue Date (AD)",
                  icon: null,
                  controller: citizenshipIssueDateADController,
                  inputType: TextInputType.datetime,
                  trailIcon: Icons.calendar_today,
                  see: false,
                ),
                CustomSpacer(),
                CustomField(
                  title: "Citizenship Issue Date (BS)",
                  icon: null,
                  controller: citizenshipIssueDateBSController,
                  inputType: TextInputType.datetime,
                  trailIcon: Icons.calendar_today,
                  see: false,
                ),
                CustomSpacer(),
                CustomDrop(
                  hint: "Material Status",
                  valueChooseList: [
                    "Single",
                    "Married",
                    "Other",
                  ],
                ),
                CustomSpacer(),
                CustomField(
                  title: "Investment Company Name",
                  // icon: null,
                  controller: companyNameController,
                  inputType: TextInputType.name,
                  // trailIcon: Icons.calendar_today,
                  see: false,
                ),
                CustomSpacer(),
                CustomSwitch(
                  title: "Involved in investment company",
                  check: InvolvedCompany,
                ),
                CustomSpacer(),
                CustomDrop(
                  hint: "Designations",
                  valueChooseList: [
                    "Director",
                    "Executive",
                    "Shareholders",
                    "Manager",
                    "Officer",
                    "Assistant",
                    "Company Secretery",
                  ],
                ),
                CustomSpacer(),
                InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BankDetail();
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
