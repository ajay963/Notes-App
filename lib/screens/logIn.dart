import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Theme/colors.dart';
import 'package:notes_app/screens/Home.dart';
import 'package:notes_app/widgets/animations.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final TextTheme txtTheme = Theme.of(context).textTheme;
    final IconThemeData iconTheme = Theme.of(context).iconTheme;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: screenSize.width,
                width: screenSize.width,
                child: Owlaimation(),
              ),
              SizedBox(height: screenSize.height * 0.16),
              Text('Notes Keeper', style: txtTheme.headline1),
              Text(
                'Always Keeps an eye\non your notes',
                textAlign: TextAlign.center,
                style: txtTheme.headline3,
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen())),
                child: Ink(
                  // splashColor: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        color: iconTheme.color,
                        size: iconTheme.size,
                      ),
                      Text(
                        'Google SignIn',
                        style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).backgroundColor),
                      )
                    ],
                  ),
                  height: 50,
                  width: screenSize.width * 0.7,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [kdeepMagenta, kMagenta],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
