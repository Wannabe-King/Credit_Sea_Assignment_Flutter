import 'package:creditsea_flutter_assignment/constants/assets.dart';
import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_gender_dropdown.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_field.dart';
import 'package:creditsea_flutter_assignment/view/widget/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:widgets_easier/widgets_easier.dart';

class ApplyForLoan extends StatefulWidget {
  const ApplyForLoan({super.key});

  @override
  State<ApplyForLoan> createState() => _ApplyForLoanState();
}

class _ApplyForLoanState extends State<ApplyForLoan> {
  int principalAmount = 5000;
  int loanTenure = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ProgressContainer(
          selectedIndex: 2,
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorX.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, -5),
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Apply for loan",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Text(
                  "We’ve calculated your loan eligibility. Select your preferred loan amount and tenure.",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: ShapeDecoration(
                        shape: DashedBorder(
                          gradient: LinearGradient(
                              colors: <Color>[ColorX.buttonBlue, ColorX.green]),
                        ),
                      ),
                      child: Text(
                        "Interest Per Day 1%",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: ShapeDecoration(
                        shape: DashedBorder(
                          gradient: LinearGradient(
                              colors: <Color>[ColorX.buttonBlue, ColorX.green]),
                        ),
                      ),
                      child: Text(
                        "Processing Fee  10%",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                CustomInputContainer(
                  inputTitle: "Purpose of Loan*",
                  inputWidget: CustomDropdown(
                    hintText: "Select purpose of loan",
                    options: ["Home Loan", "Education Loan", "Personal Loan"],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Principal Amount",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorX.darkGrey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "\u{20B9} $principalAmount",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 10,
                    activeTrackColor: ColorX.buttonBlue,
                    inactiveTrackColor:
                        ColorX.buttonBlue.withValues(alpha: 0.3),
                  ),
                  child: Slider(
                    thumbColor: ColorX.buttonBlue,
                    value: principalAmount.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        principalAmount = value.toInt();
                      });
                    },
                    min: 5000,
                    max: 50000,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tenure",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorX.darkGrey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "$loanTenure Days",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 10,
                    activeTrackColor: ColorX.buttonBlue,
                    inactiveTrackColor:
                        ColorX.buttonBlue.withValues(alpha: 0.3),
                  ),
                  child: Slider(
                    thumbColor: ColorX.buttonBlue,
                    value: loanTenure.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        loanTenure = value.toInt();
                      });
                    },
                    min: 20,
                    max: 45,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 Days",
                    ),
                    Text("45 Days")
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: ShapeDecoration(
                    shape: SolidBorder(
                      width: 3,
                      gradient: LinearGradient(
                          colors: <Color>[ColorX.buttonBlue, ColorX.green]),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Principle Amount",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            '\u{20B9} $principalAmount',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorX.buttonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Interest",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            '\u{20B9} ${(principalAmount * 0.01 * loanTenure).toInt()}',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorX.buttonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Payable",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            '\u{20B9} ${principalAmount + (principalAmount * 0.01 * loanTenure).toInt()}',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorX.buttonBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Thank you for choosing CreditSea. Please accept to proceed with the loan details.",
                  style: TextStyle(
                    color: ColorX.backgroundBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(buttonText: "Verify", disabled: true),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  buttonText: "Cancle",
                  disabled: true,
                  background: ColorX.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProgressContainer extends StatelessWidget {
  final int selectedIndex;

  const ProgressContainer({super.key, required this.selectedIndex});

  Widget _buildStep(int index, String title) {
    final isSelected = index == selectedIndex;
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected
                ? ColorX.buttonBlue
                : const Color.fromARGB(29, 117, 117, 117),
          ),
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.white : Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? ColorX.buttonBlue : ColorX.grey,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildStep(1, "Register"),
        _buildStep(2, "Offer"),
        _buildStep(3, "Approval"),
      ],
    );
  }
}
