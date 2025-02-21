import 'package:creditsea_flutter_assignment/constants/assets.dart';
import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:creditsea_flutter_assignment/view/widget/custombutton.dart';
import 'package:flutter/material.dart';

class LoanOffer extends StatefulWidget {
  const LoanOffer({super.key});

  @override
  State<LoanOffer> createState() => _LoanOfferState();
}

class _LoanOfferState extends State<LoanOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tset"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Our Offerings",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 80),
                    child: Image.asset(
                      Assets.dollar,
                      scale: 5,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black), //
                        children: [
                          TextSpan(
                            text: "Congratulations!", // Bold part
                            style: TextStyle(color: ColorX.green),
                          ),
                          TextSpan(text: " We can offer you "),
                          TextSpan(
                            text: "Rs. 10,000", // Bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " Amount Within "),
                          TextSpan(
                            text: "30 minutes", // Bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " for "),
                          TextSpan(
                            text: "90 days", // Bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ", with a payable amount of "),
                          TextSpan(
                            text: "Rs. 10,600", // Bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ". Just with few more steps.\n\n "),
                          TextSpan(
                            text: "Proceed further to", // Bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(buttonText: "Accept Offer", disabled: true),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonText: "Extend Offer",
              disabled: true,
              background: ColorX.white,
            ),
          ],
        ),
      ),
    );
  }
}
