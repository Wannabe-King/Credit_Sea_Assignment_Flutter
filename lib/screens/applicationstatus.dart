import 'package:creditsea_flutter_assignment/constants/assets.dart';
import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
import 'package:flutter/material.dart';

class ApplicationStatus extends StatefulWidget {
  const ApplicationStatus({super.key});

  @override
  State<ApplicationStatus> createState() => _ApplicationStatusState();
}

class _ApplicationStatusState extends State<ApplicationStatus> {
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
                    "Application Status",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: [
                        TextSpan(
                          text: "Loan application no.",
                          style: TextStyle(fontSize: 15),
                        ),
                        TextSpan(
                          text: "#CS12323",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ])),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              StatusTile(
                status: "Application Submitted",
                done: true,
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

class StatusTile extends StatelessWidget {
  final String status;
  final bool done;
  const StatusTile({
    super.key,
    required this.status,
    required this.done,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: done ? ColorX.green : ColorX.buttonBlue),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Text(
        status,
        style: TextStyle(
          fontSize: 15,
          color: done ? ColorX.green : ColorX.buttonBlue,
        ),
      )),
    );
  }
}
