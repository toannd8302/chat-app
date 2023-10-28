import 'package:chat_mobile_app/widgets/my_button.dart';
import 'package:chat_mobile_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  //text controllers

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  //logo
                  Icon(
                    Icons.message,
                    size: 80,
                    color: Colors.grey[700],
                  ),
                  //welcome back massage
                  const Text(
                    "Let's create an account!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  //email textfield
                  MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      oscureText: false),
                  const SizedBox(height: 10),
                  //password textfield
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      oscureText: true),
                  const SizedBox(height: 10),
                  //confirm password textfield
                  MyTextField(
                      controller: confirmPasswordController,
                      hintText: 'Confirm password',
                      oscureText: true),
                  //sign up button
                  const SizedBox(height: 15),
                  MyButton(text: "Sign up", onTap: () {}),
                  //not have account? Register now
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member?'),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "/");
                        },
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  //forgot password
                ],
              ),
            ),
          ),
        )));
  }
}
