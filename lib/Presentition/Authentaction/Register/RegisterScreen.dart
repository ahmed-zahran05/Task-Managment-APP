import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanagmentgit/Core/utills/AssetsManager.dart';
import 'package:taskmanagmentgit/Core/utills/RoutesManager.dart';
import '../../../Core/Reusable_Components/CustomTextFiield.dart';
import '../Login/LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

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
                  BuildTitle("Full Name"),
                  BuildFullNameTextField(),
                  BuildTitle("User Name"),
                  BuildUserNameTextField(),
                  BuildTitle("E-mail"),
                  BuildEmailTextField(),
                  BuildTitle("Password"),
                  BuildPasswordTextField(),
                  BuildTitle("Re-Password"),
                  BuildRePasswordTextField(),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  RegisterButton(),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        const Text(
                          "Already Have An Account ?",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, RoutesManager.LoginScreenroute);
                          },
                          child: const Text(
                            "Sign-In",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal , decoration: TextDecoration.underline),
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

  Widget BuildTitle(String Title) => SliverToBoxAdapter(
        child: Text(
          Title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  Widget BuildFullNameTextField() => SliverToBoxAdapter(
        child: Customtextformfeild(
          hintText: "Enter your full name",
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return "Please enter full name";
            }
          },
          controller: fullNameController,
        ),
      );

  Widget BuildUserNameTextField() => SliverToBoxAdapter(
        child: Customtextformfeild(
          hintText: "Enter your user name",
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return "Please enter user name";
            }
          },
          controller: userNameController,
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

  Widget BuildPasswordTextField() => SliverToBoxAdapter(
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

  Widget BuildRePasswordTextField() => SliverToBoxAdapter(
        child: Customtextformfeild(
          hintText: "Confirm Password",
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return "Please enter Password";
            }
            if (input != passwordController.text) {
              return "Sorry, the two passwords are different";
            }
          },
          isSecure: true,
          controller: rePasswordController,
        ),
      );

  Widget RegisterButton() => SliverToBoxAdapter(
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {},
          child: const Text(
            "Sign-Up",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF004182),
            ),
          ),
        ),
      );
}
