import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notes_app/Theme/colors.dart';

class AddNotesScreen extends StatelessWidget {
  final TextEditingController _titleCtr = TextEditingController();
  final TextEditingController _descriptionCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Add Notes',
                  style: txtTheme.headline1,
                ),
                Text(
                  'describe your stories',
                  textAlign: TextAlign.left,
                  style: txtTheme.headline3,
                ),
                SizedBox(height: 100),
                CustomTxtCtr(
                    labelText: 'Title',
                    hintText: 'Input Title',
                    txtCtr: _titleCtr),
                SizedBox(height: 20),
                CustomTxtCtr(
                  labelText: 'Description',
                  hintText: 'Describe your note',
                  txtCtr: _descriptionCtr,
                  maxLines: 4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTxtCtr extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? txtCtr;
  final int? maxLines;
  const CustomTxtCtr({
    Key? key,
    @required this.labelText,
    @required this.hintText,
    @required this.txtCtr,
    this.maxLines = 1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextTheme txtTheme = Theme.of(context).textTheme;
    return TextField(
      controller: txtCtr,
      maxLines: maxLines,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: txtTheme.subtitle1,
          hintStyle: txtTheme.subtitle1,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: kMediumGrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: kdeepMagenta))),
    );
  }
}
