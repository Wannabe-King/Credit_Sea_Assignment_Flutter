import 'package:creditsea_flutter_assignment/config/color.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;

  const CustomInputField({
    super.key,
    required this.hintText,
    this.onChanged,
  });

  static const inputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: ColorX.darkGrey,
      width: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        errorBorder: inputBorder,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18),
      ),
      onChanged: onChanged,
    );
  }
}