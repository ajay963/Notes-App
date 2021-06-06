import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Theme/colors.dart';

class CardView extends StatelessWidget {
  final String title;
  final String description;
  final DateTime date;
  final String category;
  const CardView({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
    required this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onLongPress: () {},
        splashColor: kMagenta,
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).cardColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toString(),
                style: txtTheme.headline4,
              ),
              SizedBox(height: 3),
              Text(
                DateFormat.MMMEd().format(date).toString(),
                style: txtTheme.headline3,
              ),
              SizedBox(height: 5),
              Text(
                description.toString(),
                style: txtTheme.bodyText1,
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: Text(
                  category,
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 20,
                      color: Theme.of(context).backgroundColor),
                ),
                decoration: BoxDecoration(
                    color: kdeepMagenta,
                    borderRadius: BorderRadius.circular(5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
