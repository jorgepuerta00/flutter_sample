import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_chip.dart';

class ContactList extends StatelessWidget {
  final List<Contact> _contacts;
  final bool showButton;
  final Function(Contact) onPressed;
  final bool showLastMessage;
  ContactList(
      this._contacts, this.showButton, this.showLastMessage, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: _buildContactList());
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts
        .map((contact) =>
            _ContactListItem(contact, showButton, showLastMessage, onPressed))
        .toList();
  }
}

class _ContactListItem extends ListTile {
  _ContactListItem(Contact contact, bool showButton, bool showLastMessage,
      Function onPressed)
      : super(
            title: Text(contact.name + ' ' + contact.lastname),
            subtitle: showLastMessage ? Text(contact.message) : null,
            leading: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: InkWell(
                    onTap: () => onPressed(contact),
                    child: CircleAvatar(
                      child: contact.lastname.isNotEmpty
                          ? Text(contact.name[0] + contact.lastname[0])
                          : Text(contact.name[0]),
                      radius: 40,
                    ))),
            trailing: Visibility(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: new CustomChip(
                        activeText: "Invited", inactiveText: "Invite")),
                visible: showButton));
}

class Contact {
  final String name;
  final String lastname;
  final String email;
  final String message;
  final String imgUrl;
  const Contact(
      {this.name, this.lastname, this.email, this.message, this.imgUrl});
}
