import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Icon(
            Icons.lock_clock,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          Text(
            "Food Delivery Apps",
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),
          MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(height: 15),
          MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),
          const SizedBox(height: 10),
          MyButton(text: "Sign In", onTap: () {}),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

                const SizedBox(width: 4),
                Text(
                  "Register Now...",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}
