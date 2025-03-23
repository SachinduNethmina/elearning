import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String type;
  final Function onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.type = "primary",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            type == "primary" ? Colors.blue : Colors.black,
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
        ),
        child: Text(
          text,
          style:
              type == "primary"
                  ? TextStyle(color: Colors.white, fontSize: 14)
                  : TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
