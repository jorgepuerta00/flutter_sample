import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_chip.dart';

class InterestList extends StatelessWidget {
  final List<Interest> _interest;

  InterestList(this._interest);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.only(left: 45),
        primary: true,
        shrinkWrap: true,
        children: <Widget>[
          Wrap(spacing: 30, runSpacing: 0.0, children: _buildContactList())
        ]);
  }

  List<_InterestListItem> _buildContactList() {
    return _interest.map((interest) => _InterestListItem(interest)).toList();
  }
}

class _InterestListItem extends CustomChip {
  _InterestListItem(Interest interest)
      : super(activeText: interest.name, inactiveText: interest.name);
}

class Interest {
  final String name;
  const Interest({this.name});
}
