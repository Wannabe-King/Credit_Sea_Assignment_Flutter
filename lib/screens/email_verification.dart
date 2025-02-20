import 'package:creditsea_flutter_assignment/config/assets.dart';
import 'package:creditsea_flutter_assignment/config/color.dart';
import 'package:creditsea_flutter_assignment/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/widget/custom_input_field.dart';
import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<EmailVerification> {
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
              Image.asset(Assets.email),
              SizedBox(
                height: 20,
              ),
              CustomInputContainer(
                inputTitle: "Email ID*",
                inputWidget: CustomInputField(
                    hintText: "Enter your email ID", password: false),
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputContainer(
                inputTitle: "OTP Verification",
                inputWidget:
                    CustomInputField(hintText: "test", password: false),
              ),
              Spacer(),
              CustomButton(buttonText: "Verify", disabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
