import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key, required this.onButtonPressed, required this.buttonText});

  final String buttonText;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        alignment: Alignment.center,
        color: ColorConstants.PRIMARY,
        height: 50,
        width: double.infinity,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}