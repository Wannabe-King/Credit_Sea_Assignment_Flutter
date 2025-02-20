import 'package:creditsea_flutter_assignment/config/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final bool disabled;

  const CustomButton({
    super.key,
    this.onTap,
    required this.buttonText,
    required this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: disabled ? ColorX.buttonBlue : ColorX.darkGrey,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(127, 0, 119, 255),
              spreadRadius: 1,
              blurRadius: 15,
            )
          ],
        ),
        padding: EdgeInsets.all(14),
        width: MediaQuery.of(context).size.width * 0.95,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              color: ColorX.white, fontSize: 17, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
