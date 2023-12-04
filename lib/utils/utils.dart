import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static Future<void> showDeleteDialog(BuildContext context,
      {required void Function()? onPressed}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor:AppColors.backgroundColor,
          backgroundColor: Colors.white,
          title: Text(
             "Delete",
            style: GoogleFonts.rubik(
              fontSize: 16,
              color: AppColors.primarySeed,
             fontWeight: FontWeight.bold
            ),
          ),
          content: Text(
             "Are you sure you want to Delete?",
            style: GoogleFonts.rubik(
             fontSize: 16,
              color: AppColors.primarySeed,
             fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                 "Cancel",
                style: GoogleFonts.rubik(
                 fontSize: 12,
                 color: AppColors.primarySeed,
                 fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                 "Delete",
                style: GoogleFonts.rubik(
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showCustomSnackBar(BuildContext context, String content,
      {required void Function() onPressed, required String actionLabel}) {
    final snackBar = SnackBar(
      content: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.primarySeed,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          content,
          style: GoogleFonts.rubik(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.backgroundColor,
          ),
        ),
      ),
      action: SnackBarAction(
        label: actionLabel,
        textColor: Colors.white,
        onPressed: onPressed,
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
