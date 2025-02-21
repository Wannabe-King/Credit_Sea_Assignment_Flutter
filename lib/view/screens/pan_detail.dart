import 'package:creditsea_flutter_assignment/constants/assets.dart';
import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/view/widget/custom_input_field.dart';
import 'package:creditsea_flutter_assignment/view/widget/custombutton.dart';
import 'package:flutter/material.dart';

class PanDetail extends StatefulWidget {
  const PanDetail({super.key});

  @override
  State<PanDetail> createState() => _PanDetailState();
}

class _PanDetailState extends State<PanDetail> {
  final TextEditingController panController= TextEditingController();
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
                    "Verify PAN Number",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(Assets.creditcard),
              SizedBox(
                height: 40,
              ),
              CustomInputContainer(
                inputTitle: "Enter Your PAN Number*",
                inputWidget: CustomInputField(
                  controller: panController,
                    hintText: "e.g., ABCDE1234F", password: false),
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
