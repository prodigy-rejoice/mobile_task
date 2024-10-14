import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/common/global_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.fillColor = Colors.transparent,
  });
  final String hintText;
  final TextInputType? inputType;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: GlobalColors.whiteColor),
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: GlobalColors.faintGreyColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: GlobalColors.borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: GlobalColors.borderColor))),
    );
  }
}

class CustomPassWordTextField extends StatefulWidget {
  const CustomPassWordTextField({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.fillColor = Colors.transparent,
  });

  final String hintText;
  final TextInputType? inputType;
  final Color? fillColor;

  @override
  State<CustomPassWordTextField> createState() =>
      _CustomPassWordTextFieldState();
}

class _CustomPassWordTextFieldState extends State<CustomPassWordTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.inputType,
      obscureText: _obscureText,
      style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: GlobalColors.whiteColor),
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 20,
            ),
          ),
          suffixIconColor: Colors.white,
          filled: true,
          fillColor: widget.fillColor,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: GlobalColors.faintGreyColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: GlobalColors.borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: GlobalColors.borderColor))),
    );
  }
}
