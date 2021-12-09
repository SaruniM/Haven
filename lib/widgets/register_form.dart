import 'package:haven_rental/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var suffixIcon2 = null;
    var suffixIcon3 = null;
    var suffixIcon4 = null;
    return Container(
        child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Email",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(
            suffixIcon: suffixIcon2,
            hintText: '',
          ),
          SizedBox(height: 10.0),
          Text(
            "Password",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(
            obscureText: true,
            suffixIcon: suffixIcon3,
            hintText: '',
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Confirm Password",
            style: GoogleFonts.inter(
              fontSize: 14.0,
              color: Color.fromRGBO(138, 150, 191, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          InputWidget(
            obscureText: true,
            suffixIcon: suffixIcon4,
            hintText: '',
          ),
        ],
      ),
    ));
  }
}
