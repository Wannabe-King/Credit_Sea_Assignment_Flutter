import 'package:creditsea_flutter_assignment/config/color.dart';
import 'package:creditsea_flutter_assignment/widget/custom_date_picker.dart';
import 'package:creditsea_flutter_assignment/widget/custom_gender_dropdown.dart';
import 'package:creditsea_flutter_assignment/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/widget/custom_input_field.dart';
import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
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
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Personal Details",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomInputContainer(
                      width: 170,
                      inputTitle: "First Name*",
                      inputWidget: CustomInputField(
                          hintText: "First Name", password: false)),
                  CustomInputContainer(
                      width: 170,
                      inputTitle: "Last Name*",
                      inputWidget: CustomInputField(
                          hintText: "Last Name", password: false)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputContainer(
                inputTitle: "Gender*",
                inputWidget: CustomDropdown(
                  options: ["Male", "Female", "Others"],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomDatePickerField(hintText: "DD - MM - YYYY"),
              SizedBox(
                height: 20,
              ),
              CustomInputContainer(
                inputTitle: "Your Marital Status *",
                inputWidget: CustomDropdown(
                  options: ["Married", "Single", "Happy"],
                ),
              ),
              Spacer(),
              CustomButton(buttonText: "Continue", disabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
