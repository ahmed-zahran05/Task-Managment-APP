import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class Customtextformfeild extends StatelessWidget {
  Customtextformfeild({super.key,this.isSecure= false, required this.hintText, this.validator , this.controller});

  String hintText;
  Validator? validator;
  TextEditingController? controller;
  bool isSecure ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: isSecure ,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red, width: 2)),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
