import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentStepper extends StatelessWidget {
  final int? currentIndex;
  const PercentStepper({Key? key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().setSp(250),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              right: ScreenUtil().setSp(20),
            ),
            child: CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: 0.4,
              center: new Text("40%"),
              progressColor: Colors.blue,
            ),
          ),
          Expanded(
            child: Stepper(
              physics: ScrollPhysics(),
              controlsBuilder: (BuildContext context,
                  {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
                return Row(
                  children: <Widget>[
                    Container(
                      child: null,
                    ),
                    Container(
                      child: null,
                    )
                  ],
                );
              },
              type: StepperType.horizontal,
              steps: _mySteps(),
              currentStep: currentIndex!,
            ),
          ),
        ],
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
          title: const Text(''),
          content: Container(
            // alignment: Alignment.centerLeft,
            child: const Text(''),
          ),
          isActive: currentIndex! >= 1),
      Step(
        title: Text(''),
        content: Text(''),
        isActive: currentIndex! >= 2,
      ),
      Step(
          title: const Text(''),
          content: Container(
            // alignment: Alignment.centerLeft,
            child: const Text(''),
          ),
          isActive: currentIndex! >= 3),
      Step(
        title: Text(''),
        content: Text(''),
        isActive: currentIndex! >= 4,
      ),
      Step(
          title: const Text(''),
          content: Container(
            // alignment: Alignment.centerLeft,
            child: const Text(''),
          ),
          isActive: currentIndex! >= 5),
      Step(
        title: Text(''),
        content: Text(''),
        isActive: currentIndex == 6,
      ),
    ];
    return _steps;
  }
}
