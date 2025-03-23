import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final String? errorText;
  final Widget? rightIcon;
  final Widget? leftIcon;

  const CustomTextField({
    super.key,
    this.hintText,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.errorText,
    this.leftIcon,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 13)),
          SizedBox(height: 2),
          SizedBox(
            height: 48,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                suffixIcon: rightIcon,
                prefixIcon: leftIcon,
                errorText: errorText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0),
              ),
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
