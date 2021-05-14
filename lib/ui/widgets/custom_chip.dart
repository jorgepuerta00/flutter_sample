import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        label: isSelected ? Text(widget.activeText) : Text(widget.inactiveText),
        side: BorderSide(color: Colors.blueAccent),
        selectedColor: Colors.blueAccent,
        labelStyle: isSelected
            ? TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
            : TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            isSelected = selected;
          });
        });
  }
}
