import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';

class CustomChip extends StatefulWidget {
  final String activeText;
  final String inactiveText;
  const CustomChip({this.activeText, this.inactiveText});
  @override
  _CustomChip createState() => new _CustomChip(activeText, inactiveText);
}

class _CustomChip extends State<CustomChip> {
  bool isSelected = false;
  _CustomChip(String activeText, String inactiveText);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: isSelected ? Text(widget.activeText) : Text(widget.inactiveText),
        backgroundColor: white,
        side: BorderSide(color: primary),
        selectedColor: primary,
        labelStyle: isSelected
            ? TextStyle(color: white, fontWeight: FontWeight.bold)
            : TextStyle(color: primary, fontWeight: FontWeight.bold),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            isSelected = selected;
          });
        });
  }
}
