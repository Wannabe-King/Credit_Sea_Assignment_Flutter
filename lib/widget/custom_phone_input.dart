import 'package:creditsea_flutter_assignment/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomPhoneWidget extends StatelessWidget {
  final Function(PhoneNumber)? onchanged;

  const CustomPhoneWidget({
    super.key,
    this.onchanged,
  });

  static const inputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorX.lightGrey,
      width: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      flagsButtonPadding: const EdgeInsets.all(8),
      dropdownIconPosition: IconPosition.trailing,
      decoration: const InputDecoration(
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        errorBorder: inputBorder,
        hintText: "Please enter your mobile no.",
        hintStyle: TextStyle(fontSize: 18, color: ColorX.lightGrey),
      ),
      initialCountryCode: 'IN',
      onChanged: onchanged,
    );
  }
}
