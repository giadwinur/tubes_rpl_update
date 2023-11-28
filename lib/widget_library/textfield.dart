import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormHitung extends StatelessWidget {
  TextEditingController? controller;

  String hintText;
  String labelText;
  FormHitung({
    Key? key,
    required this.controller,
    this.hintText = '',
    this.labelText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "password required";
          }
          return null;
        },
        controller: controller,
        autofocus: false,
        // obscureText: _passVisibility,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          hoverColor: Colors.grey,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
