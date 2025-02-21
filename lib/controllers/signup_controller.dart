import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SignUpScreen {
  phone,
  password,
  otp,
}

class SignupController extends GetxController {
  var currentScreen = SignUpScreen.phone.obs;
  var requestOtpEnabled = false.obs;
  var phoneNumber = ''.obs;
  var otp = ''.obs;
  var password=''.obs;

  void switchScreen(SignUpScreen screen) {
    currentScreen.value = screen;
  }

  void sendOtp(BuildContext context) {
    otp.value = generateOtp();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Your OTP for number ${phoneNumber} is ${otp.value}")));
    switchScreen(SignUpScreen.otp);
  }

  String generateOtp() {
    Random random = Random();
    int otp =
        1000 + random.nextInt(9000); // Ensures a 4-digit number (1000-9999)
    return otp.toString();
  }

  void verifyOtp(String enteredOTP, BuildContext context) {
    if (enteredOTP == otp.value) {
      switchScreen(SignUpScreen.password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please enter the correct otp.")));
    }
  }
}
