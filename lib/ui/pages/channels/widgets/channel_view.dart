import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_chip.dart';

class ChannelList extends StatelessWidget {
  final List<Channel> _channels;

  ChannelList(this._channels);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: _buildContactList());
  }

  List<_ChannelListItem> _buildContactList() {
    return _channels.map((channel) => _ChannelListItem(channel)).toList();
  }
}

class _ChannelListItem extends ListTile {
  _ChannelListItem(Channel channel)
      : super(
            title: Text(channel.name),
            subtitle: Text(channel.description),
            leading: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: CircleAvatar(
                  child: Text(channel.name[0]),
                  radius: 40,
                )),
            trailing: new CustomChip(
                activeText: "Subscribed", inactiveText: "Subscribe"));
}

class Channel {
  final String name;
  final String description;
  const Channel({this.name, this.description});
}
