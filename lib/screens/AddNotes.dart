import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Theme/colors.dart';
import 'package:notes_app/backend/dataStruture/notes.dart';
import 'package:notes_app/backend/dataStruture/providerTest.dart';
import 'package:notes_app/widgets/buttons.dart';
import 'package:provider/provider.dart';

class AddNotesScreen extends StatefulWidget {
  @override
  _AddNotesScreenState createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  final TextEditingController _titleCtr = TextEditingController();
  final MenuItems items = MenuItems();

  final TextEditingController _descriptionCtr = TextEditingController();
  String? _selectedItem;

  @override
  void initState() {
    _selectedItem = items.items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final NotesList notes = Provider.of<NotesList>(context);

    final TextTheme txtTheme = Theme.of(context).textTheme;
    final Size screenSize = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIOverlays([]);
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
                ),
                SizedBox(height: 20),
                DropdownButton(
                  value: _selectedItem,
                  hint: Text('Select a Category', style: txtTheme.subtitle1),
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value.toString();
                    });
                    print('$_selectedItem $value');
                  },
                  dropdownColor: Theme.of(context).cardColor,
                  items: items.items.map(
                    (item) {
                      return DropdownMenuItem(
                        value: item,
                        child: new Text(item),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(height: 40),
                CustomButtons(
                  label: 'Add Note',
                  onTap: () {
                    notes.addNotes(
                        title: _titleCtr.text.trim(),
                        notes: _descriptionCtr.text.trim(),
                        category: _selectedItem);
                    Navigator.pop(context);
                  },
                  buttonSize: screenSize.width * 0.6,
                  icon: FontAwesomeIcons.pager,
                ),
                SizedBox(height: 10),
                CustomButtons(
                  label: 'Go Back',
                  onTap: () => Navigator.pop(context),
                  buttonSize: screenSize.width * 0.6,
                  icon: FontAwesomeIcons.backward,
                ),
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
