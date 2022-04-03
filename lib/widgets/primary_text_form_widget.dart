import 'package:flutter/material.dart';

class PrimaryTextFormWidget extends StatelessWidget {
  const PrimaryTextFormWidget({
    Key? key, required this.hint, required this.controller,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,hintStyle: TextStyle(color: Colors.white),
        border: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
