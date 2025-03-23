import 'package:elearning/components/custom_button.dart';
import 'package:elearning/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  String? nameError;

  TextEditingController emailController = TextEditingController();
  String? emailError;

  TextEditingController passwordController = TextEditingController();
  String? passwordError;

  TextEditingController confirmPasswordController = TextEditingController();
  String? confirmPasswordError;

  bool obsecure1 = false;
  bool obsecure2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 150, child: Image.asset("assets/logo.png")),
              SizedBox(height: 20),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              CustomTextField(
                controller: nameController,
                label: "Name",
                errorText: nameError,
                hintText: "Enter name...",
                leftIcon: Icon(Icons.person),
              ),
              SizedBox(height: 5),
              CustomTextField(
                controller: emailController,
                label: "Email",
                errorText: emailError,
                hintText: "Enter email...",
                leftIcon: Icon(Icons.email),
              ),
              SizedBox(height: 5),
              CustomTextField(
                controller: passwordController,
                label: "Password",
                errorText: passwordError,
                hintText: "Enter password...",
                leftIcon: Icon(Icons.lock),
                obscureText: !obsecure1,
                rightIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obsecure1 = !obsecure1;
                    });
                  },
                  child: Icon(
                    obsecure1 ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              SizedBox(height: 5),
              CustomTextField(
                controller: confirmPasswordController,
                label: "Confirm password",
                errorText: confirmPasswordError,
                hintText: "Retype password...",
                leftIcon: Icon(Icons.lock),
                obscureText: !obsecure2,
                rightIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obsecure2 = !obsecure2;
                    });
                  },
                  child: Icon(
                    obsecure2 ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              SizedBox(height: 15),
              CustomButton(onPressed: () {}, text: "Sign Up"),
              SizedBox(height: 5),
              CustomButton(
                onPressed: () {},
                text: "Have account ? Login",
                type: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
