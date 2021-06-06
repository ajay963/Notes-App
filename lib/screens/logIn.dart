import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/screens/Home.dart';
import 'package:notes_app/widgets/animations.dart';
import 'package:notes_app/widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final TextTheme txtTheme = Theme.of(context).textTheme;
    SystemChrome.setEnabledSystemUIOverlays([]);
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
              CustomButtons(
                buttonSize: screenSize.width * 0.7,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen())),
                label: 'Google SignIn',
                icon: FontAwesomeIcons.google,
              )
            ],
          ),
        ),
      ),
    );
  }
}
