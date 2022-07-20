import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  // final Key formKey;
  final String hintText;
  final bool obscureText;
  final IconData prefixIconData;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  // final IconData suffixIconData;
  // final Function onChanged;

  const TextFieldsWidget({
    Key? key,
    // required this.formKey,
    required this.hintText,
    required this.obscureText,
    required this.prefixIconData,
    required this.controller,
    required this.validator,
    // required this.suffixIconData,
    // required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // key: formKey,
      obscureText: obscureText,
      style: TextStyle(
        fontSize: 12,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      cursorColor: Colors.blue,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: Colors.blueAccent,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Colors.blueAccent,
        ),
        filled: true,
        labelText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blueAccent,
            width: 1.0,
          ),
        ),
        labelStyle: const TextStyle(color: Colors.blueAccent),
      ),
      validator: validator,
    );
  }
}
