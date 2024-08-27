import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      scrollPadding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        fillColor: const Color(0xffEFEFEF),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.blue, // You can customize the border color
          ),
        ),
      ),
    );
  }
}
