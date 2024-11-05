import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Core/utills/RoutesManager.dart';

import '../../../Core/Reusable_Components/CustomTextFiield.dart';
import '../../../Core/utills/AssetsManager.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.todoLogo),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  BuildlTitle("E-mail"),
                  BuildEmailTextField(),
                  BuildlTitle("Password"),
                  BuildRePasswordField(),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  LoginnButton(),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        const Text(
                          "Dont Have  An Account ?",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, RoutesManager.registerScreenroute);
                          },
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal ,
                                decoration: TextDecoration.underline
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildlTitle(String Title) => SliverToBoxAdapter(
        child: Text(
          Title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  Widget BuildEmailTextField() => SliverToBoxAdapter(
        child: Customtextformfeild(
          hintText: "Enter your E-mail",
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return "Please enter E-mail address";
            }
          },
          controller: emailController,
        ),
      );

  Widget BuildRePasswordField() => SliverToBoxAdapter(
        child: Customtextformfeild(
          hintText: "Enter your Password",
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return "Please enter Password";
            }
            if (input.length < 6) {
              return "Sorry, password should be at least 6 characters";
            }
          },
          isSecure: true,
          controller: passwordController,
        ),
      );

  Widget LoginnButton() => SliverToBoxAdapter(
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {
            // Add registration logic here
          },
          child: const Text(
            "Sign-In",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF004182),
            ),
          ),
        ),
      );
}
