import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_field.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_phone_input.dart';
import 'package:creditsea_flutter_assignment/view/widget/custombutton.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Signin Screen
        Text(
          'Please enter your credentials',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        CustomInputContainer(
          inputTitle: "Mobile Number",
          inputWidget: CustomPhoneWidget(
            controller: phoneController,
            onchanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ),

        CustomInputContainer(
            inputTitle: "Enter password",
            inputWidget: CustomInputField(
              controller: passwordController,
              hintText: "Enter password",
              password: true,
            )),

        SizedBox(
          height: 20,
        ),
        CustomButton(
          buttonText: "Request OTP",
          disabled: true,
          onTap: () {
            print("hi");
          },
        ),
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "New to CreditSea? Create an account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorX.backgroundBlue),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
