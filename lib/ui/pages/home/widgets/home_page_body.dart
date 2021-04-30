import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/home/contact_data.dart';
import 'package:ourglass/ui/pages/home/contact_view.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ContactList(kContacts);
  }
}
