import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmi,
    @required this.bmiMoreResult,
    @required this.bmiResult,
  });

  final String bmiResult;
  final String bmi;
  final String bmiMoreResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Text(
                "Your Result",
                style: kBoldLabelStyle,
              )),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmiResult,
                      style: kResultLabel,
                    ),
                    Text(
                      bmi,
                      style: kBMIResult,
                    ),
                    Text(
                      bmiMoreResult,
                      textAlign: TextAlign.center,
                      style: kBodyLabel,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                onPress: () {
                  Navigator.pop(context);
                },
                title: Text(
                  "RE-CALCULATE",
                  style: kLargeButtonLabel,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
