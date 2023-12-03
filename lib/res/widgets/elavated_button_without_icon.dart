import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonWithoutIcon extends StatelessWidget {
  const ElevatedButtonWithoutIcon({
    super.key,
    required this.size,
    this.onPressed,
    required this.buttonChildName,
  });

  final Size size;
  final void Function()? onPressed;
  final String buttonChildName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        minimumSize: Size(size.width, 50),
      ),
      onPressed: onPressed,
      child: Text(
        buttonChildName,
        style: GoogleFonts.rubik(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    );
  }
}