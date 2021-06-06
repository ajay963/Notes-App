import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:notes_app/Theme/colors.dart';

class CustomButtons extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final Function()? onTap;
  final double? buttonSize;
  const CustomButtons({
    Key? key,
    @required this.buttonSize,
    @required this.icon,
    required this.label,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = Theme.of(context).iconTheme;

    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: iconTheme.color,
              size: iconTheme.size,
            ),
            Text(
              label.toString(),
              style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).backgroundColor),
            )
          ],
        ),
        width: buttonSize,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [kdeepMagenta, kMagenta],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
      ),
    );
  }
}
