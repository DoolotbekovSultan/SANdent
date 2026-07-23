import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png', width: 103, height: 115),
          Text(
            'Название',
            style: GoogleFonts.poppins(
              fontSize: 52.14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0,
              height: 57.36 / 52.14,
            ),
          ),
        ],
      ),
    );
  }
}
