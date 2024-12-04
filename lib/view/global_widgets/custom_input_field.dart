import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {

  String? hintText;
  IconData? prefix;
  IconData? suffixIcon;
  CustomInputField({this.hintText, this.prefix, this.suffixIcon});
  
  IconData? get prefixIcon => null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        prefixIcon: prefix != null ? Icon(prefixIcon) : null,
        suffixIcon: Icon(suffixIcon),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}